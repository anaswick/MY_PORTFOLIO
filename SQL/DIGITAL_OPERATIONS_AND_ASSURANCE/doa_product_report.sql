-- tiket bulan ini

select product 'NAMA PRODUK', count(ticket_number) 'JUMLAH TIKET', 
ROUND(COUNT(ticket_number) / (SELECT COUNT(*) FROM dm_oca where ticket_created between '2024-01-01 00:00:00' and '2024-01-31 23:59:59') * 100,2) AS 'PERSENTASE' -- ganti dengan interval bulan ini
from dm_oca
where ticket_created between '2024-01-01 00:00:00' and '2024-01-31 23:59:59' -- ganti dengan interval bulan ini
group by 1
order by 2 desc;


-- tiket bulan ini di tahun lalu SOURCE dm_all_ticket karena masih pake SF

select product 'NAMA PRODUK', count(TicketNo) 'JUMLAH TIKET', 
ROUND(COUNT(TicketNo) / (SELECT COUNT(*) FROM dm_all_ticket dat2 where TicketDate between '2023-01-01 00:00:00' and '2023-01-31 23:59:59') * 100,2) AS 'PERSENTASE' 
from dm_all_ticket dat
where TicketDate between '2023-01-01 00:00:00' and '2023-01-31 23:59:59' -- ganti dengan interval bulan ini
group by 1
order by 2 desc;

-- MTTREP SPESIFIK BERDASARKAN PRODUK
select 
product 'NAMA PRODUK', 
sub_category,
count(ticket_number) 'JUMLAH TIKET', 
ROUND(COUNT(ticket_number) / (SELECT COUNT(*) FROM dm_oca where ticket_created between '2024-01-01 00:00:00' and '2024-01-31 23:59:59' and product = 'Indibizpay') * 100,2) AS 'PERSENTASE' -- ubah range tanggal dan nama produk, 
round(avg(MTTRep_Minute),0) 'MEAN TIME TO REPAIR (MENIT)', 
min(MTTRep_Minute) 'MIN', 
max(MTTRep_Minute) 'MAX',
max(MTTRep_Minute)-min(MTTRep_Minute) 'RANGE'
from dm_oca
where ticket_created between '2024-01-01 00:00:00' and '2024-01-31 23:59:59' and product = 'Indibizpay'-- ubah range tanggal dan nama produk
group by 1,2
order by 1,3 desc,2;

-- tren 3 bulan terakhir
select left(ticket_created,7) BULAN, count(ticket_number) 'JUMLAH TIKET'
from dm_oca
where ticket_created between '2023-10-01 00:00:00' and '2024-01-31 23:59:59' and product = 'Indibizpay' -- ganti range tanggal dan nama produk
group by 1


-- hitung tiket yang comply

SELECT 
    product,
    SUM(CASE 
            WHEN priority = 'low' AND MTTRep_Minute < 60 THEN 1
            WHEN priority = 'medium' AND MTTRep_Minute < 360 THEN 1
            WHEN priority = 'high' AND MTTRep_Minute < 720 THEN 1
            ELSE 0
        END) AS compliant_tickets,
		COUNT(*) AS total_tickets,
(compliant_tickets / total_tickets) *100 'SLA COMPLIANCE RATE'
FROM 
dm_oca
where ticket_created between '2023-10-01 00:00:00' and '2024-01-31 23:59:59' 
GROUP BY 
product
order by total_tickets DESC;
;
