--1581. Customer Who Visited but Did Not Make Any Transactions

--Beats 60.66%of users with MS SQL Server
SELECT 
    v.customer_id, 
    COUNT(v.visit_id) AS count_no_trans 
FROM 
    Visits v 
WHERE 
    v.visit_id not in (select visit_id from transactions)
GROUP BY 
    v.customer_id;


-------------------------------------------------------------
SELECT
    v.customer_id,
    COUNT(v.visit_id) AS count_no_trans
from
    Visits v
    LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE
    t.transaction_id IS NULL
GROUP BY
    v.customer_id;