/* Write your T-SQL query statement below */
select
    teacher_id,
    count(distinct subject_id) as cnt
from
    Teacher
group by
    teacher_id
order by
    teacher_id