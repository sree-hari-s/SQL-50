--1633. Percentage of Users Attended a Contest
select
    contest_id,
    round(
        count(r.contest_id) * 100.00 /(
            select
                count(*)
            from
                users
        ),
        2
    ) percentage
from
    Register r
group by
    contest_id
order by
    percentage desc,
    contest_id asc;