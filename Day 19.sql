select bear_name, max(food_weight_kg) as biggest_meal_kg 
from polar_bears as pb 
inner join meal_log as ml on pb.bear_id = ml.bear_id 
where date between "2024-12-01" and "2024-12-31"
group by bear_name
order by biggest_meal_kg desc
