Select ski.region, avg (sn.snowfall_inches) as average_snowfall
from ski_resorts as ski inner join snowfall sn 
on ski.resort_id = sn.resort_id
group by ski.region
order by avg (sn.snowfall_inches) desc
