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


#query for categorizing time to resolved
SELECT 
LEFT(Periode, 7) AS MONTH, 
Periode, 
CaseNumber, 
Symptom, 
ResolvedTime_Second / 3600 AS TTR_HOUR, 
CASE 
    WHEN ResolvedTime_Second/3600 < 3 THEN "< 3 JAM"
    WHEN ResolvedTime_Second/3600 > 3 AND ResolvedTime_Second <= 6 THEN "3-6 JAM"
    WHEN ResolvedTime_Second/3600 > 6 AND ResolvedTime_Second <= 12 THEN "6-12 JAM"
    WHEN ResolvedTime_Second/3600 > 12 AND ResolvedTime_Second <= 24 THEN "12-24 JAM"
    WHEN ResolvedTime_Second/3600 > 24 AND ResolvedTime_Second <= 48 THEN "24-48 JAM"
    WHEN ResolvedTime_Second/3600 > 48 AND ResolvedTime_Second <= 72 THEN "48-72 JAM"
    ELSE ">72 JAM" 
END AS TTR_CATEGORY
FROM dm_sapu_jagad dsj
WHERE Periode BETWEEN '2023-01-01 00:00:00' AND '2023-04-30 23:59:59' 
    AND Product = 'SooltanPay'
ORDER BY 1, 2

#CTE for Sooltanpay ticket
WITH sooltanpay_ticket_0423 AS(
select date(periode) AS Date, periode AS TicketDate, CaseNumber,Status,Symptom,ResolvedTime_Second  
  from dm_sapu_jagad dsj where Product = 'Sooltanpay' 
and Periode between '2023-04-01' AND '2023-04-30')
select * from sooltanpay_ticket_0423;
