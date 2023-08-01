--1068. Product Sales Analysis I
select
    p.product_name,
    s.year,
    s.price
from
    Sales s
    left join Product p on P.Product_id = S.Product_id
order by
    s.sale_id;