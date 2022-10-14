/* @name FindGenreTopN */
-- name: genre-top-n
-- Get the N top tracks by genre
select genre.name as genre,
    case when length(ss.name) > 15 then
        substring(ss.name from 1 for 15) || '...'
    else
        ss.name
    end as track,
    ss.count as count,
    artist.name as artist
from genre
    left join lateral (
        select track.name,
            track.albumid,
            count(playlistid)
        from track
            left join playlisttrack using (trackid)
        where track.genreid = genre.genreid
        group by track.trackid
        order by count desc
        limit :n) as ss (name,
        albumid,
        count) on true
    join album using (albumid)
    join artist using (artistid)
order by genre.name,
    ss.count desc;

