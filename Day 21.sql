select recipient_type, SUM(weight_kg) as total_weight, 
ROUND(SUM(weight_kg)/(select SUM(weight_kg) from gifts),2) as weight_percentage
from gifts
group by recipient_type