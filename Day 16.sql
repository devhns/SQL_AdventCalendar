select category, sum(quantity_sold*price_per_unit) as total
from candy_sales
group by category
