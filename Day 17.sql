select prank_name, location from grinch_pranks
where difficulty = "Advanced" or difficulty = "Expert"
order by prank_name desc, location desc