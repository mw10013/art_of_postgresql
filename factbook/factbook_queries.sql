-- \set start '2017-02-01'
select date,
    to_char(shares, '99G999G999G999') as shares,
    to_char(trades, '99G999G999') as trades,
    to_char(dollars, 'L99G999G999G999') as dollars
from factbook
where date >= date :'start'
    and date < date :'start' + interval '1 month'
order by date;

select cast(calendar.entry as date) as date,
    coalesce(shares, 0) as shares,
    coalesce(trades, 0) as trades,
    to_char(coalesce(dollars, 0), 'L99G999G999G999') as dollars
from
    /*
     * Generate the target month's calendar then LEFT JOIN
     * each day against the factbook dataset, so as to have
     * every day in the result set, whether or not we have a
     * book entry for the day.
     */
    generate_series(date :'start', date :'start' + interval '1 month' - interval '1 day', interval '1 day') as calendar (entry)
    left join factbook on factbook.date = calendar.entry
order by date;

with computed_data as (
    select cast(date as date) as date,
        to_char(date, 'Dy') as day,
        coalesce(dollars, 0) as dollars,
        lag(dollars, 1) over (partition by extract('isodow' from date) order by date) as last_week_dollars
    from
        /*
         * Generate the month calendar, plus a week before
         * so that we have values to compare dollars against
         * even for the first week of the month.
         */
        generate_series(date :'start' - interval '1 week', date :'start' + interval '1 month' - interval '1 day', interval '1 day') as calendar (date)
        left join factbook using (date))
select date,
    day,
    to_char(coalesce(dollars, 0), 'L99G999G999G999') as dollars,
    case when dollars is not null
        and dollars <> 0 then
        round(100.0 * (dollars - last_week_dollars) / dollars, 2)
    end as "WoW %"
from computed_data
where date >= date :'start'
order by date;

select cast(date as date) as date,
    to_char(date, 'Dy') as day,
    coalesce(dollars, 0) as dollars,
    lag(dollars, 1) over (partition by extract('isodow' from date) order by date) as last_week_dollars
from generate_series(date :'start' - interval '1 week', date :'start' + interval '1 month' - interval '1 day', interval '1 day') as calendar (date)
    left join factbook using (date);

select calendar.date as cal_date,
    extract('isodow' from calendar.date) as dow,
    factbook.*,
    lag(dollars, 1) over (partition by extract('isodow' from date) order by date) as last_week_dollars
from generate_series(date :'start' - interval '1 week', date :'start' + interval '1 month' - interval '1 day', interval '1 day') as calendar (date)
    left join factbook using (date);

