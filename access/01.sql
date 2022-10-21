begin;

create table app_user (
    app_user_id serial primary key,
    email text not null unique check (email <> ''),
    role text not null check (role = 'customer' or role = 'admin'),
    created_at timestamptz default now() not null
);

-- deleted_at?
create table access_user (
    access_user_id serial primary key,
    name text not null check (name <> ''),
    description text default ''::text not null,
    code text not null check (code <> ''),
    activate_code_at timestamptz,
    expire_code_at timestamptz,
    app_user_id integer not null references app_user on delete cascade,
    unique (app_user_id, name),
    unique (app_user_id, code)
);

create index on access_user (app_user_id);

-- create schema if not exists access;
create table access_hub (
    access_hub_id serial primary key,
    name text default 'Hub' ::text not null check (name <> ''),
    description text default ''::text not null,
    heartbeat_at timestamptz,
    -- unique with no default?
    api_token text default ''::text not null,
    app_user_id integer not null references app_user on delete cascade
);

create index on access_hub (app_user_id);

create table access_point (
    access_point_id serial primary key,
    name text not null check (name <> ''),
    description text default ''::text not null,
    position integer not null check (position > 0),
    access_hub_id integer not null references access_hub on delete cascade,
    unique (access_hub_id, position)
);

create index on access_point (access_hub_id);

create table access_point_to_access_user (
    access_point_id integer not null references access_point on delete cascade,
    access_user_id integer not null references access_user on delete cascade,
    unique (access_point_id, access_user_id)
);

create index on access_point_to_access_user (access_point_id);

create index on access_point_to_access_user (access_user_id);

create table access_event (
    access_event_id serial primary key,
    at timestamptz not null,
    access text not null check (access = 'grant' or access = 'deny'),
    code text not null,
    access_user_id integer references access_user (access_user_id) on delete cascade,
    access_point_id integer references access_point (access_point_id) on delete cascade
);

create index on access_event (access_user_id);

create index on access_event (access_point_id);


/*
-- tables, views, sequences
select n.nspname as "Schema",
 c.relname as "Name",
 case c.relkind
 when 'r' then
 'table'
 when 'v' then
 'view'
 when 'm' then
 'materialized view'
 when 'i' then
 'index'
 when 'S' then
 'sequence'
 when 's' then
 'special'
 when 't' then
 'TOAST table'
 when 'f' then
 'foreign table'
 when 'p' then
 'partitioned table'
 when 'I' then
 'partitioned index'
 end as "Type",
 pg_catalog.pg_get_userbyid(c.relowner) as "Owner"
from pg_catalog.pg_class c
 left join pg_catalog.pg_namespace n on n.oid = c.relnamespace
 left join pg_catalog.pg_am am on am.oid = c.relam
where c.relkind in ('r', 'p', 'v', 'm', 'S', 'f', '')
 and n.nspname <> 'pg_catalog'
 and n.nspname !~ '^pg_toast'
 and n.nspname <> 'information_schema'
 and pg_catalog.pg_table_is_visible(c.oid)
order by 1,
 2;

-- indexes
select n.nspname as "Schema",
 c.relname as "Name",
 case c.relkind
 when 'r' then
 'table'
 when 'v' then
 'view'
 when 'm' then
 'materialized view'
 when 'i' then
 'index'
 when 'S' then
 'sequence'
 when 's' then
 'special'
 when 't' then
 'TOAST table'
 when 'f' then
 'foreign table'
 when 'p' then
 'partitioned table'
 when 'I' then
 'partitioned index'
 end as "Type",
 pg_catalog.pg_get_userbyid(c.relowner) as "Owner",
 c2.relname as "Table"
from pg_catalog.pg_class c
 left join pg_catalog.pg_namespace n on n.oid = c.relnamespace
 left join pg_catalog.pg_am am on am.oid = c.relam
 left join pg_catalog.pg_index i on i.indexrelid = c.oid
 left join pg_catalog.pg_class c2 on i.indrelid = c2.oid
where c.relkind in ('i', 'I', '')
 and n.nspname <> 'pg_catalog'
 and n.nspname !~ '^pg_toast'
 and n.nspname <> 'information_schema'
 and pg_catalog.pg_table_is_visible(c.oid)
order by 1,
 2;
 */
insert into app_user (email, role)
    values ('appuser1@access.com', 'customer'), ('appuser2@access.com', 'customer'), ('admin@access.com', 'admin');

select *
from app_user;

insert into access_hub (name, description, app_user_id)
select 'Hub ' || hub_index,
    'This is hub ' || hub_index,
    app_user_id
from app_user,
    generate_series(1, 2) as t (hub_index)
where role = 'customer'
order by app_user_id;

select *
from access_hub;

insert into access_point (name, position, access_hub_id)
select 'Point ' || position,
    position,
    access_hub_id
from access_hub,
    generate_series(1, 4) as t (position)
order by access_hub_id;

select *
from access_point;

select app_user.email,
    count(distinct access_hub_id) as hubs,
    count(*) as points
from app_user
    join access_hub using (app_user_id)
    join access_point using (access_hub_id)
group by app_user_id;

rollback;

