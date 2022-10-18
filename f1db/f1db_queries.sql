select code,
    format('%s %s', forename, surname) as fullname,
    forename,
    surname
from drivers;

select date::date,
    extract('isodow' from date) as dow,
    to_char(date, 'dy') as day,
    extract('isoyear' from date) as "iso year",
    extract('week' from date) as week,
    extract('day' from (date + interval '2 month - 1 day')) as feb,
    extract('year' from date) as year,
    extract('day' from (date + interval '2 month - 1 day')) = 29 as leap
from generate_series(date '2000-01-01', date '2010-01-01', interval '1 year') as t (date);

select code,
    forename,
    surname,
    count(*) as wins
from drivers
    join results using (driverid)
where position = 1
group by driverid
order by wins desc
limit 3;

-- Be careful about not in semantics with NULL: the following query returns no rows
select x
from generate_series(1, 100) as t (x)
where x not in (1, 2, 3, null);

explain (costs off)
select year,
    url
from seasons
order by year desc
limit 3;

select drivers.code,
    drivers.surname,
    position,
    laps,
    status
from results
    join drivers using (driverid)
    join status using (statusid)
where raceid = 972
order by position nulls last,
    laps desc,
    case when status = 'Power Unit' then
        1
    else
        2
    end;

select name,
    location,
    country
from circuits
order by point(lng, lat) <-> point(2.349014, 48.864716)
limit 10;

select extract('year' from date_trunc('decade', date)) as decade,
    count(*) as count
from races
group by decade
order by decade desc;

with decades as (
    select extract('year' from date_trunc('decade', date)) as decade
    from races
    group by decade
)
select decade,
    rank() over (partition by decade order by wins desc) as rank,
        forename,
        surname,
        wins
    from decades
    left join lateral (
        select code,
            forename,
            surname,
            count(*) as wins
        from drivers
            join results on results.driverid = drivers.driverid
                and results.position = 1
            join races using (raceid)
        where extract('year'
            from date_trunc('decade', races.date)) = decades.decade
        group by decades.decade, drivers.driverid
        order by wins desc
        limit 3) as winners on true
order by decade asc,
    wins desc;

select lap,
    drivers.code,
    position,
    milliseconds * interval '1ms' as laptime
from laptimes
    join drivers using (driverid)
where raceid = 972
order by lap,
    position fetch first 3 rows only;

select lap,
    drivers.code,
    position,
    milliseconds * interval '1ms' as laptime
from laptimes
    join drivers using (driverid)
where raceid = 972
    and row (lap,
        position) > (1,
        3)
order by lap,
    position fetch first 3 rows only;

select extract('year' from date_trunc('decade', date)) as decade,
    count(*)
from races
group by decade
order by decade;

with races_per_decade as (
    select extract('year' from date_trunc('decade', date)) as decade,
        count(*) as nbraces
    from races
    group by decade
    order by decade
)
select decade,
    nbraces,
    case when lag(nbraces, 1) over (order by decade) is null then
        ''
    when nbraces - lag(nbraces, 1) over (order by decade) < 0 then
        format('-%3s', lag(nbraces, 1) over (order by decade) - nbraces)
    else
        format('+%3s', nbraces - lag(nbraces, 1) over (order by decade))
    end as evolution
from races_per_decade;

select driverid,
    forename,
    surname,
    count(*) as races,
    bool_and(position is null) as never_finished
from drivers
    join results using (driverid)
    join races using (raceid)
group by driverid;

with counts as (
    select driverid,
        forename,
        surname,
        count(*) as races,
        bool_and(position is null) as never_finished
    from drivers
        join results using (driverid)
        join races using (raceid)
    group by driverid
)
select driverid,
    forename,
    surname,
    races
from counts
where never_finished
order by races desc;

select date_trunc('year', date) as year,
    driverid,
    count(*) filter (where position is null) as outs,
    count(*),
    bool_and(position is null) as never_finished
from drivers
    join results using (driverid)
    join races using (raceid)
group by date_trunc('year', date),
    driverid
order by driverid,
    date_trunc('year', date);

with counts as (
    select date_trunc('year', date) as year,
        count(*) filter (where position is null) as outs,
        bool_and(position is null) as never_finished
    from drivers
        join results using (driverid)
        join races using (raceid)
    group by date_trunc('year', date), driverid
)
select extract(year from year) as season,
    sum(outs) as did_not_finish
from counts
where never_finished
group by season
order by sum(outs) desc
limit 5;

select drivers.surname as driver,
    constructors.name as constructor,
    sum(points) as points
from results
    join races using (raceid)
    join drivers using (driverid)
    join constructors using (constructorid)
where drivers.surname in ('Prost', 'Senna')
group by rollup (drivers.surname, constructors.name);

select drivers.surname as driver,
    constructors.name as constructor,
    sum(points) as points
from results
    join races using (raceid)
    join drivers using (driverid)
    join constructors using (constructorid)
where drivers.surname in ('Prost', 'Senna')
group by rollup (drivers.surname, constructors.name)
order by driver,
    constructor;

select drivers.surname as driver,
    constructors.name as constructor,
    sum(points) as points
from results
    join races using (raceid)
    join drivers using (driverid)
    join constructors using (constructorid)
where drivers.surname in ('Prost', 'Senna')
group by cube (drivers.surname,
        constructors.name);

select drivers.surname as driver,
    constructors.name as constructor,
    sum(points) as points
from results
    join races using (raceid)
    join drivers using (driverid)
    join constructors using (constructorid)
where drivers.surname in ('Prost', 'Senna')
group by cube (drivers.surname,
        constructors.name)
order by driver,
    constructor;

select extract(year from races.date) as season,
    count(*) filter (where status = 'Accident') as accidents
from results
    join status using (statusid)
    join races using (raceid)
group by season
order by accidents desc
limit 5;

select extract(year from races.date) as season,
    count(*) as participants,
    count(*) filter (where status = 'Accident') as accidents
from results
    join status using (statusid)
    join races using (raceid)
group by season
order by season desc;

with accidents as (
    select extract(year from races.date) as season,
        count(*) as participants,
        count(*) filter (where status = 'Accident') as accidents
    from results
        join status using (statusid)
        join races using (raceid)
    group by season
)
select season,
    round(100.0 * accidents / participants, 2) as pct,
    repeat(text '■', ceil(100 * accidents / participants)::int) as bar
from accidents
where season between 1974 and 1990
order by season;

select year as season,
    driverid,
    constructorid,
    sum(points) as points
from results
    join races using (raceid)
group by grouping sets ((year,
            driverid),
        (year,
            constructorid))
having sum(points) > 0
order by season,
    points desc;

with points as (
    select year as season,
        driverid,
        constructorid,
        sum(points) as points
    from results
        join races using (raceid)
    group by grouping sets ((year, driverid), (year, constructorid))
    having sum(points) > 0
    order by season, points desc
),
tops as (
    select season,
        max(points) filter (where driverid is null) as ctops,
        max(points) filter (where constructorid is null) as dtops
    from points
    group by season
    order by season,
        dtops,
        ctops
),
champs as (
    select tops.season,
        champ_driver.driverid,
        champ_driver.points,
        champ_constructor.constructorid,
        champ_constructor.points
    from tops
        join points as champ_driver on champ_driver.season = tops.season
            and champ_driver.constructorid is null
            and champ_driver.points = tops.dtops
        join points as champ_constructor on champ_constructor.season = tops.season
            and champ_constructor.driverid is null
            and champ_constructor.points = tops.ctops
)
    select season,
        format('%s %s', drivers.forename, drivers.surname) as "Driver's Champion",
    constructors.name as "Constructor's champion"
from champs
join drivers using (driverid)
join constructors using (constructorid)
order by season;

select distinct on (driverid)
    forename,
    surname
from results
    join drivers using (driverid)
where position = 1;

select count(distinct (driverid))
from results
    join drivers using (driverid)
where position = 1;

select forename,
    surname
from results
    join drivers using (driverid)
where position = 1
group by drivers.driverid;

(
    select raceid,
        'driver' as type,
        format('%s %s', drivers.forename, drivers.surname) as name,
        driverstandings.points
    from driverstandings
        join drivers using (driverid)
    where raceid = 972
        and points > 0)
union all (
    select raceid,
        'constructor' as type,
        constructors.name as name,
        constructorstandings.points
    from constructorstandings
        join constructors using (constructorid)
    where raceid = 972
        and points > 0)
order by points desc;

(
    select driverid,
        format('%s %s', drivers.forename, drivers.surname) as name
    from results
        join drivers using (driverid)
    where raceid = 972
        and points = 0)
except (
    select driverid,
        format('%s %s', drivers.forename, drivers.surname) as name
    from results
        join drivers using (driverid)
    where raceid = 971
        and points = 0);

select a::text,
    b::text,
    (a = b)::text as "a=b",
    format('%s = %s', coalesce(a::text, 'null'), coalesce(b::text, 'null')) as op,
    format('is %s', coalesce((a = b)::text, 'null')) as result
from (
    values (true),
        (false),
        (null)) v1 (a)
    cross join (
        values (true), (false), (null)) v2 (b);

select a::text as
    left,
    b::text as
    right,
    (a = b)::text as "=",
    (a <> b)::text as "<>",
    (a is distinct from b)::text as "is distinct",
    (a is not distinct from b)::text as "is not distinct from"
from (
    values (true),
        (false),
        (null)) t1 (a)
    cross join (
        values (true), (false), (null)) t2 (b);

select races.date,
    races.name,
    drivers.surname as pole_position,
    results.position
from races
    /*
     * We want only the pole position from the races
     * know the result of and still list the race when
     * we don't know the results.
     */
    left join results on races.raceid = results.raceid
        and results.grid = 1
    left join drivers using (driverid)
where date >= '2017-05-01'
    and date < '2017-08-01'
order by races.date;

select a,
    b
from (
    values (true),
        (false),
        (null)) v1 (a)
    cross join (
        values (true), (false), (null)) v2 (b)
where a = null;

select a,
    b
from (
    values (true),
        (false),
        (null)) v1 (a)
    cross join (
        values (true), (false), (null)) v2 (b)
where a is null;

select x,
    array_agg(x) over (order by x)
from generate_series(1, 3) as t (x);

select x,
    array_agg(x) over (order by x rows between unbounded preceding and current row)
from generate_series(1, 3) as t (x);

select x,
    array_agg(x) over (rows between current row and unbounded following)
from generate_series(1, 3) as t (x);

select x,
    array_agg(x) over () as frame,
    sum(x) over () as sum,
    x::float / sum(x) over () as part
from generate_series(1, 3) as t (x);

select surname,
    constructors.name,
    position,
    format('%s / %s', row_number() over (partition by constructorid order by position nulls last), count(*) over (partition by constructorid)) as "pos same constr"
from results
    join drivers using (driverid)
    join constructors using (constructorid)
where raceid = 890
order by position;

select surname,
    constructors.name,
    position,
    format('%s / %s', row_number() over (partition by constructorid order by position nulls last), count(*) over (partition by constructorid)) as "pos same constr",
    array_agg(position) over (partition by constructorid order by position nulls last rows between unbounded preceding and unbounded following) as agg
from results
    join drivers using (driverid)
    join constructors using (constructorid)
where raceid = 890
order by position;

select surname,
    position as pos,
    row_number() over (order by "fastest_lapSpeed"::numeric) as fast,
    ntile(3) over w as "group",
    lag(code, 1) over w as "prev",
    lead(code, 1) over w as "next"
from results
    join drivers using (driverid)
where raceid = 890
window w as (order by position)
order by position;

select results.position_order as position,
    drivers.code,
    count(behind.*) as behind
from results
    join drivers using (driverid)
    left join results behind on results.raceid = behind.raceid
        and results.position_order < behind.position_order
where results.raceid = 972
    and results.position_order <= 3
group by results.position_order,
    drivers.code
order by results.position_order;

select results.position_order,
    drivers.code
from results
    join drivers using (driverid)
where results.raceid = 972
order by results.position_order;

select results.position_order,
    drivers.code,
    count(behind.*) as behind,
    array_agg(behind.position_order) as agg
from results
    join drivers using (driverid)
    left join results behind on results.raceid = behind.raceid
        and results.position_order < behind.position_order
where results.raceid = 972
group by results.position_order,
    drivers.code
order by results.position_order;

select nspname,
    typname
from pg_type t
    join pg_namespace n on n.oid = t.typnamespace
where nspname = 'pg_catalog'
    and typname !~ '(^_|^pg_|^reg|_handler$)'
order by nspname,
    typname;

select year,
    format('%s %s', forename, surname) as name,
    count(*) as ran,
    count(*) filter (where position = 1) as won,
    count(*) filter (where position is not null) as finished,
    sum(points) as points
from races
    join results using (raceid)
    join drivers using (driverid)
group by year,
    drivers.driverid
having bool_and(position = 1) is true
order by year,
    points desc;

select year,
    format('%s %s', forename, surname) as name,
    count(*) as ran,
    count(*) filter (where position = 1) as won,
    count(*) filter (where position is not null) as finished,
    sum(points) as points
from races
    join results using (raceid)
    join drivers using (driverid)
group by year,
    drivers.driverid
having bool_and(position is not distinct from 1) is true
order by year,
    points desc;

select id,
    regexp_split_to_table(str, ',')
from (
    values (1, 'fee > fi, foo > fum, eeny > meeny')) str_table (id, str);

select id,
    regexp_split_to_array(regexp_split_to_table(str, ','), ' > ') as categories
from (
    values (1, 'fee > fi, foo > fum, eeny > meeny')) str_table (id, str);

with categories (id,
    categories) as (
    select id,
        regexp_split_to_array(regexp_split_to_table(str, ','), ' > ') as categories
    from (
        values (1, 'fee > fi, foo > fum, eeny > meeny')) str_table (id, str))
select id,
    categories[1] as category,
    categories[2] as sub_category
from categories;

select year,
    drivers.code,
    format('%s %s', forename, surname) as name,
    count(*)
from results
    join races using (raceid)
    join drivers using (driverid)
where grid = 1
    and position = 1
group by year,
    drivers.driverid
order by count desc
limit 10;

select oprname,
    oprcode::regproc,
    oprleft::regtype,
    oprright::regtype,
    oprresult::regtype
from pg_operator
where oprname = '='
    and oprleft::regtype = 'bigint'::regtype;

-- create extension "uuid-ossp";
select uuid_generate_v4 ()
from generate_series(1, 10) as t (x);

select pg_column_size(uuid 'fbb850cc-dd26-4904-96ef-15ad8dfaff07') as uuid_bytes,
    pg_column_size('fbb850cc-dd26-4904-96ef-15ad8dfaff07') as uuid_string_bytes;

select pg_column_size(timestamp without time zone 'now'),
    pg_column_size(timestamp with time zone 'now');

-- set intervalstyle to postgres;
-- set intervalstyle to postgres_verbose;
select interval '1 month',
    interval '2 weeks',
    2 * interval '1 week',
    78389 * interval '1 ms';

select d::date as month,
    (d + interval '1 month' - interval '1 day')::date as month_end,
    (d + interval '1 month')::date as next_month,
    (d + interval '1 month')::date - d::date as days
from generate_series(date '2017-01-01', date '2017-12-01', interval '1 month') as t (d);

select regexp_matches('This is a message with some tag.  #yo #tag #yowsa', '(#[^ ,]+)', 'g');

select id,
    regexp_matches(message, '(#[^ ,]+)', 'g') as match
from (
    values (1, 'This is my tweet. #yo #tweet #yowsa'),
        (2, 'Postgresql is great.  #yowsa #postgresql')) as t (id, message);

with matches as (
    select id,
        regexp_matches(message, '(#[^ ,]+)', 'g') as match
    from (
        values (1, 'This is my tweet. #yo #tweet #yowsa'),
            (2, 'Postgresql is great.  #yowsa #postgresql')) as t (id, message))
select id,
    array_agg(match[1] order by match[1])
from matches
group by id
order by id;

select *
from (
    values (1, array['#tweet', '#yo', '#yowsa']),
        (2, array['#yas', '#yowsa'])) as ht (id, hashtags),
    unnest(hashtags) as t (tag);

select tag, count(*)
from (
    values (1, array['#tweet', '#yo', '#yowsa']),
        (2, array['#yas', '#yowsa'])) as ht (id, hashtags),
    unnest(hashtags) as t (tag)
group by tag
order by count(*) desc;
