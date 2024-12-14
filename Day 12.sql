select s.globe_name, count(f.figurine_id), s.material 
from snow_globes s inner join figurines f on
s.globe_id = f.globe_id 
group by s.globe_name
order by count(f.figurine_id) desc
limit 3