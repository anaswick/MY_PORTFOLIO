#query for knowing the number of complaint tickets by month, date, product, and symptom

select 
left(Periode,7) AS MONTH, 
left(periode,10) AS DATE, 
Product AS NAMA_PRODUK, 
Symptom , 
count(distinct CaseNumber)
from dm_sapu_jagad dsj
where (Periode between '2023-01-01 00:00:00' AND '2023-04-30 23:59:59')
group by 1,2,3,4
order by 1,2
