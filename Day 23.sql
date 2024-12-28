SELECT log_id, day_of_month, weight,
weight - (LAG (weight, 1,0) OVER (ORDER BY day_of_month )) as weight_dif
from grinch_weight_log