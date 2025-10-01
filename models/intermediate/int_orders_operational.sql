--- margin = revenue - purchase_cost
--- purchase_cost = quantity * purchase_price
--- Operational_margin = margin + shipping_fee - log_cost - ship_cost

select
    o.orders_id,
    o.date_date,
    SUM(margin + shipping_fee - logcost - ship_cost) as operational_margin
from {{ref('int_orders_margin') }} as o
left join {{ref('stg_raw_ship')}} as s
on o.orders_id = s.orders_id
group by o.orders_id, o.date_date