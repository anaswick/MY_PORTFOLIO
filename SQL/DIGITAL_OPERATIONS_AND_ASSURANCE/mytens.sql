#NUMBER OF COMPLAINT TICKETS PER MONTH
select DATE_FORMAT(Periode, '%Y-%m') MONTH, count(*)
from dm_sapu_jagad dsj2
where product = 'Mytens gobeyond' and (Periode between '2023-01-01 00:00:00' AND '2023-05-31 23:59:59')
group by 1
order by 1
