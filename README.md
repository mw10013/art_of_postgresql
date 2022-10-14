## Art of Postgresql databases and queries with Supabase local db

- Uses pnpm and supabase local db
- pnpm add -D supabase

## Supabase CLI

[Install via NPM](https://github.com/supabase/cli),
[Supabase Local Development](https://supabase.com/docs/guides/cli/local-development)

- pnpm add -D supabase
- pnpm supabase -h
- pnpm supabase init
- pnpm supabase start | stop | status
- pnpm supabase db diff --use-migra --file [file_name]
- pnpm supabase db reset --debug
- pnpm supabase db branch create | delete | list | switch
- psql: \i supabase/seed.sql
- psql postgresql://postgres:postgres@localhost:54322/postgres

## Factbook Database

- pg_restore -v -d postgresql://postgres:postgres@localhost:54322 --create factbook/factbook_db.dump
- psql postgresql://postgres:postgres@localhost:54322/factbook

- cd factbook
- psql postgresql://postgres:postgres@localhost:54322/postgres
- create database factbook;
- \c factbook
- \i factbook_setup.sql
- pg_dump -Fc -v -f factbook_db.dump postgresql://postgres:postgres@localhost:54322/factbook
- pg_dump -v -f factbook_db.sql postgresql://postgres:postgres@localhost:54322/factbook

## Chinook Database

- pg_restore -v -d postgresql://postgres:postgres@localhost:54322 --create chinook/chinook_db.dump
- psql postgresql://postgres:postgres@localhost:54322/chinook

- Unable to get pgloader on debian/wsl working with supabase postgresql in windows docker.
- https://wasm.supabase.com/
- alter user postgres with password 'postgres';
- create database chinook;
- Network | Start
- Status at bottom of page (port will be different0): psql postgres://postgres@proxy.wasm.supabase.com:6055
- psql postgres://postgres:postgres@proxy.wasm.supabase.com:6055/chinook
- docker run --rm -it dimitri/pgloader:latest pgloader --verbose https://github.com/lerocha/chinook-database/raw/master/ChinookDatabase/DataSources/Chinook_Sqlite_AutoIncrementPKs.sqlite postgres://postgres:postgres@proxy.wasm.supabase.com:6055/chinook
- pg_dump -Fc -v -f chinook_db.dump postgres://postgres:postgres@proxy.wasm.supabase.com:6055/chinook
- pg_restore -v -d postgresql://postgres:postgres@localhost:54322 --create chinook/chinook_db.dump
- pg_dump -v --data-only --inserts -f chinook/chinook_db_data.sql postgresql://postgres:postgres@localhost:54322/chinook
- pg_restore -v -d postgresql://postgres:postgres@localhost:54322/postgres --schema-only chinook_db.dump

## F1DB Database

- pg_restore -v -d postgresql://postgres:postgres@localhost:54322 --create f1db/f1db_db.dump
- psql postgresql://postgres:postgres@localhost:54322/f1db

- https://raw.githubusercontent.com/tomredsky/f1db/master/f1db_postgres.sql
- replace \_id with id
- remove \_ from table names: constructor_results, constructor_standings, driver_standings, lap_times, pit_stops
- https://github.com/mikebranski/the-art-of-postgresql-docker
- psql postgresql://postgres:postgres@localhost:54322/postgres
- create database f1db;
- \c f1db
- \i f1db/f1db_dump.sql
- ALTER DATABASE f1db SET search_path TO f1db, public; ?
- pg_dump -Fc -v -f f1db/f1db_db.dump postgresql://postgres:postgres@localhost:54322/f1db

## PostgreSQL VSC Extension
- https://marketplace.visualstudio.com/items?itemName=ckolkman.vscode-postgres
- https://github.com/Borvik/vscode-postgres
- With .sql files, may need to manually set type to postgres for F5 to execute selection

## pgFormatter VSC Extension

- https://marketplace.visualstudio.com/items?itemName=bradymholt.pgformatter
- https://github.com/bradymholt/vscode-pgFormatter
- https://sqlformat.darold.net/
- requires perl
- ~/.pg_format: wrap-after=1

