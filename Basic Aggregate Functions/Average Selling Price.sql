--1251. Average Selling Price

-- Runtime Details
-- 519ms
-- Beats 88.91%of users with MS SQL Server

SELECT
    p.product_id,
    round((SUM(p.price * u.units) + 0.0) / sum(u.units), 2) as average_price
FROM
    Prices p
    INNER JOIN UnitsSold u ON p.product_id = u.product_id
    AND u.purchase_date BETWEEN p.Start_date
    and p.end_date
GROUP BY
    p.product_id