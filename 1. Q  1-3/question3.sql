SET DATEFIRST 1

select weeknum, weeksum, prevWeekSum, format(cast(weeksum as float)/prevWeekSum -1 ,'P') as WoWGwth FROM

		(select
		dates.weeknum, 
		sum(reserve_visitors) as weekSum,
		lag(sum(reserve_visitors)) over (order by dates.weeknum) as prevWeekSum
		
		from restaurants_visitors rv

		inner join
				(select 
						calendar_date, 
						concat(year(calendar_date), right('0' + convert(varchar,DATEPART(week, calendar_date)),2)) as weeknum
				from date_info) dates

		on rv.visit_date = dates.calendar_date
		where dates.weeknum in (201722, 201721, 201720, 201719, 201718)
		group by dates.weeknum) wow

WHERE weeknum > 201718