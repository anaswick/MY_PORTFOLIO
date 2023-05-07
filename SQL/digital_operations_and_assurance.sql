#query for counting average resolved time in second per ticket symptom

select Symptom, avg(ResolvedTime_Second) AS AVG_RESOLVED_TIME, count(CaseNumber) AS NO_OF_TICKET
from dm_sapu_jagad dsj
where Product = 'sooltanpay' 
and (periode between '2023-04-01 00:00:00' AND '2023-04-30 23:59:59') 
and Product = 'Sooltanpay' 
and status in ('solved','closed')
group by 1
order by 2 DESC

#query for counting average resolved time in general for April'23

select avg(ResolvedTime_Second)
from dm_sapu_jagad dsj
where (periode between '2023-04-01 00:00:00' AND '2023-04-30 23:59:59') 
and status in ('solved','closed')

#query for counting average resolved time in by product for April'23 , order by the highest average

select Product, avg(ResolvedTime_Second) AS AVG_RESOLVED_TIME
from dm_sapu_jagad dsj
where (periode between '2023-04-01 00:00:00' AND '2023-04-30 23:59:59') 
and status in ('solved','closed')
group by 1
order by 2 DESC
