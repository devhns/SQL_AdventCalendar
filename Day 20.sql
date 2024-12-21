select distinct(v.vendor_name)
from vendors as v inner join item_prices as ip 
on v.vendor_id = ip.vendor_id
where ip.price_usd < 10