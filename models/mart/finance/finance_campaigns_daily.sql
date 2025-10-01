select
    date_date,
    ads_margin
    average_basket
    operational_margin
    ads_cost
    ads_impression
    ads_clicks
    quantity
    revenue
    purchase_cost
    margin
    shipping_fee
    log_cost
    ship_cost
FROM {{ref("finance_days")}} as f
left join {{ref("campaigns_daily")}} as c
using (date_date)