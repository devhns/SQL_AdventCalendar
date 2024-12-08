select custoselect customer_name,count(distinct(activity)) from rentals
group by customer_name
having count(distinct(activity))>1