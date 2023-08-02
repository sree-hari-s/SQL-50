--1280. Students and Examinations
select
    s.student_id,
    s.student_name,
    sub.subject_name,
    COUNT(e.subject_name) as attended_exams
from
    Students s
    cross join Subjects sub
    left join Examinations e on e.student_id = s.student_id
    and sub.subject_name = e.subject_name
group by
    s.student_id,
    s.student_name,
    sub.subject_name
order by
    s.student_id,
    sub.subject_name