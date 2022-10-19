begin;

-- create schema if not exists access;
create table hub (
    hub_id serial primary key,
    name text default 'Hub' ::text not null check (name <> ''),
    description text default ''::text not null,
    heartbeat_at timestamptz,
    -- unique with no default?
    api_token text default ''::text not null
);

create table point (
    point_id serial primary key,
    name text not null,
    description text default ''::text not null,
    position integer not null,
    hub_id integer not null references hub (hub_id) on delete cascade,
    unique (hub_id, position)
);

create index on point(hub_id);

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

insert into hub (name, description)
select 'Hub ' || hub_id,
    'This is hub ' || hub_id
from generate_series(1, 2) as t (hub_id);

insert into point(name, position, hub_id)
select name,
    position,
    hub_id
from generate_series(1, 2) as t (hub_id),
    lateral (
        select 'Point ' || position as name,
            position
        from generate_series(1, 4) as tt (position)) as ttt;

select *
from hub;

select *
from point;

rollback;
