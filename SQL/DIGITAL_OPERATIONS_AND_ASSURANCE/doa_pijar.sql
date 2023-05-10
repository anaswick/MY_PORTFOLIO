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

#query for retrieved ticket details in April 2023
select distinct A.CaseNumber,
left(A.Periode,7) AS MONTH, 
left(A.periode,10) AS DATE, 
A.Product AS NAMA_PRODUK, 
A.Symptom , 
A.type AS JENIS_TIKET,
B.Channel AS JALUR_KOMPLAIN,
B.Category,
B.SubCategory,
B.TicketDescription
from dm_sapu_jagad A
left join dm_all_ticket B
on A.CaseNumber = B.TicketNo
where (A.Periode between '2023-04-01 00:00:00' AND '2023-04-30 23:59:59') AND A.Product = 'Pijar Mahir'
order by 2,3,4
