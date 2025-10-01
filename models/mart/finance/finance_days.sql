-- Date
-- Total number of transactions
-- Total revenue
-- Average Basket
-- Operational Margin
-- Total purchase cost
-- Total shipping fees
-- Total log costs
-- Total quantity of products sold.
select
    m.date_date,
    count(m.orders_id) as total_number_of_transactions,
    round(sum(m.revenue), 2) as total_revenue,
    round(avg(revenue), 2) as average_basket,
    round(sum(operational_margin), 2) as operational_margin,
    round(sum(purchase_price), 2) as total_purchase_price,
    round(sum(o.shipping_fee), 2) as shipping_fee,
    round(sum(o.logcost), 2) as logistical_costs,
    sum(m.quantity) as quantity
from {{ ref("int_orders_margin") }} as m
left join {{ ref("int_orders_operational") }} as o using (orders_id)
group by m.date_date
