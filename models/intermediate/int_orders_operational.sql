--- margin = revenue - purchase_cost
--- purchase_cost = quantity * purchase_price
--- Operational_margin = margin + shipping_fee - log_cost - ship_cost

select *
from {{ref('int_orders_margin') }}