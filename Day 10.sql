select friend_name, count(resolution_id), sum(is_completed), 
(sum(is_completed)/count(resolution_id))*100,     
CASE
    WHEN (sum(is_completed)/count(resolution_id))*100 > 75 THEN 'Green'
    WHEN (sum(is_completed)/count(resolution_id))*100 BETWEEN 50 AND 75 THEN 'Yellow'
    ELSE 'Red'
END AS category from resolutions
group by friend_name