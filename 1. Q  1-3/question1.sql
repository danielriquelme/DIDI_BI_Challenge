	select top(5) si.store_id,
			      ROUND(CAST(SUM(rv.reserve_visitors) as float)/COUNT(distinct rv.visit_date),0) as dailyAvg
		from restaurants_visitors rv
	
		inner join store_info si on rv.id = si.store_id
		inner join date_info di on rv.visit_date = di.calendar_date

	where di.holiday_flg = 1
	group by si.store_id
	order by dailyAvg desc
