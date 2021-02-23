# SQL Questions 1 - 3

### Question 0 - ETL

Before starting answering the first questions, I extracted, transformed and loaded the csv files into SQL server through python. For more details please consult Data ETL.ipynb

## Question 1

Write the SQL queries necessary to generate a list of the five restaurants that have the highest average number of visitors on holidays. The result table should also contain that average per restaurant.

```sql
select top(5) si.store_id,
			      ROUND(CAST(SUM(rv.reserve_visitors) as float)/COUNT(distinct rv.visit_date),0) as dailyAvg
		from restaurants_visitors rv
	
		inner join store_info si on rv.id = si.store_id
		inner join date_info di on rv.visit_date = di.calendar_date

	where di.holiday_flg = 1
	group by si.store_id
	order by dailyAvg desc
```
| store_id         | dailyAvg |
| ---------------- | -------- |
| 0a74a5408a0b8642 | 33       |
| e053c561f32acc28 | 31       |
| db80363d35f10926 | 25       |
| 42c9aa6d617c5057 | 19       |
| 24b9b2a020826ede | 18       |



## Question 2

Use SQL to discover which day of the week there are usually more visitors on average in restaurant.

```sql
select  di.day_of_week, 
		ROUND(CAST(SUM(rv.reserve_visitors) as float)/COUNT(distinct rv.visit_date),0) as dailyAvg
	from restaurants_visitors rv
	
	inner join store_info si on rv.id = si.store_id
	inner join date_info di on rv.visit_date = di.calendar_date

group by di.day_of_week
order by dailyAvg desc
```

| day_of_week | dailyAvg |
| ----------- | -------- |
| Saturday    | 194      |
| Friday      | 181      |
| Thursday    | 115      |
| Wednesday   | 92       |
| Monday      | 80       |
| Sunday      | 80       |
| Tuesday     | 77       |

Saturday is the weekday with more visitors on average.



## Question 3

How was the percentage of growth of the amount of visitors week over week for the last four weeks of the data? Use SQL too.



For this question I considered Monday as the first day of a week. Since last week of data is not complete (mon-wed), I took it away form this query.

```sql
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
		where dates.weeknum in (201722, 201721, 201720, 201719, 201718) /*Just consider last 5 weeks*/
		group by dates.weeknum) wow

WHERE weeknum > 201718 /*Just consider last 4 weeks*/
```



| weeknum | weeksum | prevWeekSum | WoWGwth |
| ------- | ------- | ----------- | ------- |
| 201719  | 130     | 618         | -78.96% |
| 201720  | 170     | 130         | 30.77%  |
| 201721  | 78      | 170         | -54.12% |
| 201722  | 63      | 78          | -19.23% |



