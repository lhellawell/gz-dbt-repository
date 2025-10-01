select
orders_id,
date_date,
SUM(revenue) as revenue,
SUM(quantity) as quantity,
SUM(CAST(purchase_price AS FLOAT64)) as purchase_price,
SUM(margin) as margin
FROM {{ref('int_sales_margin') }}
GROUP BY orders_id, date_date