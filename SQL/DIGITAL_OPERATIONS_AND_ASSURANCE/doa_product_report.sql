select product 'NAMA PRODUK', count(ticket_number) 'JUMLAH TIKET', 
ROUND(COUNT(ticket_number) / (SELECT COUNT(*) FROM dm_oca where ticket_created between '2024-01-01 00:00:00' and '2024-01-31 23:59:59') * 100,2) AS 'PERSENTASE' -- ganti dengan interval bulan ini
from dm_oca
where ticket_created between '2024-01-01 00:00:00' and '2024-01-31 23:59:59' -- ganti dengan interval bulan ini
group by 1
order by 2 desc;

