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


#monthly and daily ticket trend by product and symptom for period 1/1/2023 - 30/4/2023

select left(periode,7) AS MONTH, left(periode,10) AS DATE, Product, Symptom, count(distinct CaseNumber) AS NO_OF_TICKET
from dm_sapu_jagad dsj
where (periode between '2023-01-01 00:00:00' AND '2023-04-30 23:59:59')
group by 1,2,3,4
order by 1,2

#query for identify the customer with more than 1 tickets in a month for SooltanPay product
SELECT ContactId, count(DISTINCT CaseNumber)
FROM stg_sapu_jagad ssj
where (CreatedDate between '2023-04-01 00:00:00' AND '2023-04-30 23:59:59') and Product__c = 'Sooltanpay'
group by ContactId
having count(ContactId) > 1

#query for counting the number of tickets for each product in April 2023
select Product__c, count(distinct CaseNumber)
from stg_sapu_jagad ssj
where (CreatedDate between '2023-04-01 00:00:00' AND '2023-04-30 23:59:59')
group by 1
