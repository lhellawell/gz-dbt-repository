-- margin = revenue - purchase_cost
-- purchase_cost = quantity * purchase_price

SELECT
sales.*,
product.purchase_price,
sales.quantity - (sales.quantity * product.purchase_price) AS margin
FROM {{ref("stg_raw_sales")}} as sales
LEFT JOIN {{ref("stg_raw_product")}} as product
ON sales.products_id = product.products_id