select  vn.vendor_name, sum(sl.quantity_sold*sl.price_per_unit) as
total_revenue from vendors as vn  join sales as sl on
vn.vendor_id = sl.vendor_id 
group by vn.vendor_id, vn.vendor_name
order by total_revenue desc
Limit 2