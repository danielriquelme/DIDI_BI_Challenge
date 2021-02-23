select  di.day_of_week, 
		ROUND(CAST(SUM(rv.reserve_visitors) as float)/COUNT(distinct rv.visit_date),0) as dailyAvg
	from restaurants_visitors rv
	
	inner join store_info si on rv.id = si.store_id
	inner join date_info di on rv.visit_date = di.calendar_date

group by di.day_of_week
order by dailyAvg desc
