SELECT delivery_date,  
SUM(gifts_delivered) OVER (order by delivery_date ASC 
ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
as sum_gifts_delivered from deliveries