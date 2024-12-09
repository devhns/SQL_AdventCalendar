select candy_name, candy_category, calories,
RANK() OVER(PARTITION BY candy_category ORDER BY calories DESC) rank_in_category
from candy_nutrition
order by candy_category, rank_in_category
