--1211. Queries Quality and Percentage
-- Runtime Details
-- 3635ms
-- Beats 32.43%of users with MS SQL Server

select
    query_name,
    round(avg((rating * 1.00) / position), 2) quality,
    round(
        avg(
            case
                when rating < 3 then 1.00
                else 0.00
            end
        ) * 100,
        2
    ) poor_query_percentage
from
    Queries
group by
    query_name;