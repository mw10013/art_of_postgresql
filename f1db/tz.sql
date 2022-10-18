-- psql -a -f f1db/tz.sql postgresql://postgres:postgres@localhost:54322/f1db
begin;
drop table if exists tstz;
create table tstz (
    ts timestamp,
    tstz timestamptz
);
set timezone to 'Europe/Paris';
select now();
insert into tstz
    values (now(), now());
set timezone to 'Pacific/Tahiti';
select now();
insert into tstz
    values (now(), now());
set timezone to 'Europe/Paris';
table tstz;
set timezone to 'Pacific/Tahiti';
table tstz;
commit;

