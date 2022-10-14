begin;

create table factbook
(
year int,
date date,
shares text,
trades text,
dollars text
);

\copy factbook from 'factbook.csv' with delimiter E'\t' null ''

alter table factbook
alter shares
type bigint
using replace(shares, ',', '')::bigint,

alter trades
type bigint
using replace(trades, ',', '')::bigint,

alter dollars
type bigint
using substring(replace(dollars, ',', '') from 2)::numeric;

commit;


