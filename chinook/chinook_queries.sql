select *
from artist
where artist.name = 'Red Hot Chili Peppers';

select *
from artist
    join album using (artistid)
where artist.name = 'Red Hot Chili Peppers';

select album.title as album,
    sum(milliseconds) * interval '1 ms' as duration
from album
    join artist using (artistid)
    left join track using (albumid)
where artist.artistid = 127
group by album
order by album;

select album.title as album,
    sum(milliseconds) * interval '1 ms' as duration
from album
    join artist using (artistid)
    left join track using (albumid)
where artist.artistid = 127
group by album
order by album;

select name,
    artistid,
    album,
    duration
from artist a
    left join lateral (
        select album.title as album,
            sum(milliseconds) * interval '1 ms' as duration
        from album
            join artist using (artistid)
            left join track using (albumid)
        where artist.artistid = a.artistid
        group by album
        order by album) aa on true
where a.name = 'Red Hot Chili Peppers';

create or replace function get_all_albums (in artistid bigint, out album text, out duration interval)
    returns setof record
    language sql
    as $$
    select album.title as album,
        sum(milliseconds) * interval '1 ms' as duration
    from album
        join artist using (artistid)
        left join track using (albumid)
    where artist.artistid = get_all_albums.artistid
    group by album
    order by album;

$$;

select *
from get_all_albums (127);

select *
from get_all_albums ((
        select artistid
        from artist
        where name = 'Red Hot Chili Peppers'));

select album,
    duration
from artist,
    lateral get_all_albums (artistid)
where artist.name = 'Red Hot Chili Peppers';

select name,
    artistid,
    album,
    duration
from artist,
    lateral get_all_albums (artistid)
where artist.name = 'Red Hot Chili Peppers';

with four_albums as (
    select artistid
    from album
    group by artistid
    having count(*) = 4
)
select artist.name,
    album,
    duration
from four_albums
    join artist using (artistid),
    lateral get_all_albums (artistid)
order by artistid,
    duration desc;

