with table2 as
(select m.dish_name, e.event_name, (m.calories/m.weight_g) as cperw, 
ROW_NUMBER() 
OVER(partition by m.event_id order by (m.calories/m.weight_g) desc) 
rank_id, * from menu m inner join events e on
m.event_id = e.event_id )

select dish_name, event_name, cperw from table2
where rank_id <= 3
order by event_name, rank_id
