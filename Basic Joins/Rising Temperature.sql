--197. Rising Temperature
select
    w1.id
from
    Weather w1,
    Weather w2
where
    w1.recordDate = dateadd(day, 1, w2.recordDate)
    and w1.temperature > w2.temperature;