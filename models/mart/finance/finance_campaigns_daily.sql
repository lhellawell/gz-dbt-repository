select
    c.date_date,
    c.campaign_key,
    sum(f.total_revenue - c.ads_cost) as ads_margin,
    avg(f.average_basket) as avg_basket,
    sum(f.operational_margin) as ops_margin,
    sum(c.ads_cost) as total_ads_cost,
    sum(c.impression) as total_impressions,
    sum(c.click) as total_clicks,
    sum(f.quantity) as quantity,
    sum(f.total_revenue) as revenue,
    sum(f.total_purchase_price) as purchase_cost,
    sum(f.shipping_fee) as totalshipping_fee,
    sum(f.logistical_costs) as logistical_cost
FROM {{ref("finance_days")}} as f
left join {{ref("campaigns_daily")}} as c
using (date_date)
group by c.date_date, c.campaign_key