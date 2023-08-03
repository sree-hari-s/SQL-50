--620. Not Boring Movies
/* Write your T-SQL query statement below */
select
    id,
    movie,
    description,
    rating
from
    Cinema
where
    id % 2 = 1
    and description <> 'boring'
order by
    rating desc


--============================================================================
-- Runtime Details
-- 470ms
-- Beats 73.42%of users with MS SQL Server
/* Write your PL/SQL query statement below */
select
    *
from
    Cinema
where
    id % 2 = 1
    and description <> 'boring'
order by
    rating desc
