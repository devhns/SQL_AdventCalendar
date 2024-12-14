select pb.bear_id, pb.bear_name, sum(t.distance_km) as total_distance_traveled 
from polar_bears as pb inner join tracking as t on
pb.bear_id = t.bear_id
where t.date between "2024-12-1" and "2024-12-31"
group by pb.bear_id, pb.bear_name
order by total_distance_traveled DESC
limit 3