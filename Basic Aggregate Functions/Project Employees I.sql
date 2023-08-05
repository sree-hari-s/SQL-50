--1075. Project Employees I
-- Runtime Details
-- 4024ms
-- Beats 65.04%of users with MS SQL Server
select
    project_id,
    ROUND(AVG(experience_years * 1.0), 2) AS average_years
from
    Project P
    inner join Employee E on P.employee_id = E.employee_id
group by
    project_id
order by
    project_id