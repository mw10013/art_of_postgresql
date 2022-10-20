import { AccessHub, ApiToken, PrismaClient, User } from "@prisma/client";

const prisma = new PrismaClient({
  log: [{ level: "query", emit: "event" }],
});

prisma.$on("query", ({ query, params }) => {
  console.log({ query, params });
});

const hashedPassword =
  "$2a$10$xe2ZEEJJqULy6VJ2khSBFeyKWXUWdS0Jkj4SmtsT6ZFOw.fzHdlVa";

async function seedUser({ email, role }: Pick<User, "email" | "role">) {
  // cleanup the existing database
  // await prisma.user.delete({ where: { email } }).catch(() => {
  //   // no worries if it doesn't exist yet
  // });

  const user = await prisma.user.create({
    data: {
      email,
      role,
      password: {
        create: {
          hash: hashedPassword,
        },
      },
    },
  });
  return { user };
}

async function seedCustomer({
  email,
  role,
  accessHubId,
  accessHubToken,
}: Parameters<typeof seedUser>[0] & {
  accessHubId?: AccessHub["id"];
  accessHubToken?: ApiToken["token"];
}) {
  const { user } = await seedUser({ email, role });
  const {
    masterAccessUser,
    guest1AccessUser,
    guest2AccessUser,
    guest3AccessUser,
    guest4AccessUser,
  } = await seedAccessUsers({ user });

  await seedAccessHub({
    accessHubId,
    accessHubName: `The ${email} BnB`,
    accessHubToken,
    user,
    masterAccessUser,
    guest1AccessUser,
    guest2AccessUser,
  });

  await seedAccessHub({
    accessHubName: `The ${email} Nook`,
    accessHubToken,
    user,
    masterAccessUser,
    guest1AccessUser: guest3AccessUser,
    guest2AccessUser: guest4AccessUser,
  });
}

async function seedAccessUsers({ user }: Awaited<ReturnType<typeof seedUser>>) {
  const masterAccessUser = await prisma.accessUser.create({
    data: {
      name: "Master",
      description: "Access to everything",
      code: "999",
      userId: user.id,
    },
  });

  const guest1AccessUser = await prisma.accessUser.create({
    data: {
      name: "Guest1",
      description: "Guest1 for Brooklyn BnB",
      code: "111",
      userId: user.id,
    },
  });

  const guest2AccessUser = await prisma.accessUser.create({
    data: {
      name: "Guest2",
      description: "Guest2 for Brooklyn BnB",
      code: "222",
      userId: user.id,
    },
  });

  const guest3AccessUser = await prisma.accessUser.create({
    data: {
      name: "Guest3",
      description: "Guest1 for Staten Island BnB",
      code: "333",
      userId: user.id,
    },
  });

  const guest4AccessUser = await prisma.accessUser.create({
    data: {
      name: "Guest4",
      description: "Guest2 for Brooklyn BnB",
      code: "444",
      userId: user.id,
    },
  });

  return {
    masterAccessUser,
    guest1AccessUser,
    guest2AccessUser,
    guest3AccessUser,
    guest4AccessUser,
  };
}

async function seedAccessHub({
  accessHubId,
  accessHubName,
  accessHubToken,
  user,
  masterAccessUser,
  guest1AccessUser,
  guest2AccessUser,
}: {
  accessHubId?: string;
  accessHubName: string;
  accessHubToken?: string;
} & Awaited<ReturnType<typeof seedUser>> &
  Pick<
    Awaited<ReturnType<typeof seedAccessUsers>>,
    "masterAccessUser" | "guest1AccessUser" | "guest2AccessUser"
  >) {
  const accessHub = await prisma.accessHub.create({
    include: {
      accessPoints: true,
      user: {
        include: {
          accessUsers: {
            include: { accessPoints: true },
          },
        },
      },
    },
    data: {
      id: accessHubId,
      name: accessHubName,
      userId: user.id,
      apiToken: {
        create: {
          token: accessHubToken,
        },
      },
      accessPoints: {
        create: [
          {
            name: "Front Door",
            position: 1,
            accessUsers: {
              connect: [
                { id: masterAccessUser.id },
                { id: guest1AccessUser.id },
                { id: guest2AccessUser.id },
              ],
            },
          },
          {
            name: "First Floor",
            position: 2,
            accessUsers: {
              connect: [
                { id: masterAccessUser.id },
                { id: guest1AccessUser.id },
              ],
            },
          },
          {
            name: "Second Floor",
            position: 3,
            accessUsers: {
              connect: [
                { id: masterAccessUser.id },
                { id: guest1AccessUser.id },
              ],
            },
          },
          {
            name: "Basement Door",
            position: 4,
            accessUsers: {
              connect: [{ id: masterAccessUser.id }],
            },
          },
        ],
      },
    },
  });
  await seedAccessHubEvents({ accessHub });
  return { accessHub };
}

function* atGenerator(): Generator<Date, never, never> {
  let at = new Date();

  while (true) {
    yield at;
    at.setTime(at.getTime() - 90 * 60 * 1000);
  }
}

async function seedAccessHubEvents({
  accessHub,
}: Awaited<ReturnType<typeof seedAccessHub>>) {
  const at = atGenerator();
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  for (const _ of Array(125).keys()) {
    const accessUser =
      accessHub.user.accessUsers[
        Math.floor(Math.random() * accessHub.user.accessUsers.length)
      ];
    const accessPoint =
      accessHub.accessPoints[
        Math.floor(Math.random() * accessHub.accessPoints.length)
      ];
    if (accessUser.accessPoints.some((ap) => ap.id === accessPoint.id)) {
      await prisma.accessEvent.create({
        data: {
          at: at.next().value,
          access: "grant",
          code: accessUser.code,
          accessUserId: accessUser.id,
          accessPointId: accessPoint.id,
        },
      });
    } else {
      await prisma.accessEvent.create({
        data: {
          at: at.next().value,
          access: "deny",
          code: accessUser.code,
          accessPointId: accessPoint.id,
        },
      });
    }
  }
}

async function seed() {
  await seedUser({ email: "ola.scarab@gmail.com", role: "admin" });
  await seedUser({ email: "mw10013@gmail.com", role: "admin" });
  await seedCustomer({
    email: "scarab2022@gmail.com",
    role: "customer",
    accessHubId: "cl2uwi6uv0030ybthbkls5w0i",
    accessHubToken:
      "d627713660c1891414ac55a6ccd1c1294292bb19a9e6be741f340782a531e331",
  });
  await seedCustomer({
    email: "scarab3033@gmail.com",
    role: "customer",
  });

  console.log(`Database has been seeded. 🌱`);
}

seed()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
