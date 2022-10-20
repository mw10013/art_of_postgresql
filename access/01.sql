begin;

create table app_user (
    app_user_id serial primary key,
    email text not null unique,
    role text not null check (role = 'customer' or role = 'admin'),
    created_at timestamptz default now() not null
);

create table access_user (
    access_user_id serial primary key,
    name text not null,
    description text default ''::text not null,
    code text default ''::text not null,
    activate_code_at timestamptz,
    expire_code_at timestamptz,
    app_user_id integer not null references app_user (app_user_id) on delete cascade
);

-- create schema if not exists access;
create table access_hub (
    access_hub_id serial primary key,
    name text default 'Hub' ::text not null check (name <> ''),
    description text default ''::text not null,
    heartbeat_at timestamptz,
    -- unique with no default?
    api_token text default ''::text not null,
    app_user_id integer not null references app_user (app_user_id) on delete cascade
);

create table access_point (
    access_point_id serial primary key,
    name text not null,
    description text default ''::text not null,
    position integer not null,
    access_hub_id integer not null references access_hub (access_hub_id) on delete cascade,
    unique (access_hub_id, position)
);

create index on access_point (access_hub_id);

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

insert into app_user (email, role)
    values ('appuser1@access.com', 'customer'), ('appuser2@access.com', 'customer'), ('admin@access.com', 'admin');

select *
from app_user;

-- insert into access_hub (name, description)
-- select 'Hub ' || access_hub_id,
--     'This is hub ' || access_hub_id
-- from generate_series(1, 2) as t (access_hub_id);
-- insert into access_point (name, position, access_hub_id)
-- select name,
--     position,
--     access_hub_id
-- from generate_series(1, 2) as t (access_hub_id),
--     lateral (
--         select 'Point ' || position as name,
--             position
--         from generate_series(1, 4) as tt (position)) as ttt;
-- select *
-- from access_hub;
-- select *
-- from access_point;
rollback;

