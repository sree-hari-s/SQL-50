--577. Employee Bonus
select
    e.name,
    b.bonus
from
    Employee e
    left join Bonus b on e.empId = b.empID
where
    ISNULL(b.bonus, 0) < 1000