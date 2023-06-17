#NUMBER OF COMPLAINT TICKETS PER MONTH
select DATE_FORMAT(Periode, '%Y-%m') MONTH, count(*)
from dm_sapu_jagad dsj2
where product = 'Mytens gobeyond' and (Periode between '2023-01-01 00:00:00' AND '2023-05-31 23:59:59')
group by 1
order by 1;

#NUMBER OF TICKETS PER MONTH BY SYMPTOM
select DATE_FORMAT(Periode, '%Y-%m') MONTH ,Symptom ,count(*)
from dm_sapu_jagad dsj
where product = 'Mytens gobeyond' and (Periode between '2023-01-01 00:00:00' AND '2023-05-31 23:59:59')
group by 1,2;

#TICKET DETAILS WITH TICKET DESCRIPTION
select distinct(TicketNo), date_format(TicketDate,'%Y-%m') MONTH, TicketDate, Product, Category, SubCategory, TicketSubject, TicketDescription
from dm_all_ticket dat
where Product = 'Mytens gobeyond' and (TicketDate between '2023-01-01 00:00:00' AND '2023-05-31 23:59:59')

#AVERAGE TIME TO RESOLVED PER MONTH BY SYMPTOMS
select DATE_FORMAT(Periode, '%Y-%m') ,Symptom , avg(ResolvedTime_Second/3600), min(ResolvedTime_Second/3600), max(ResolvedTime_Second/3600)
from dm_sapu_jagad dsj
where product = 'MyTens GoBeyond' and (Periode between '2023-01-01 00:00:00' AND '2023-05-31 23:59:59')
group by 1,2

#AVERAGE TIME TO RESOLVED PER MONTH FOR ALL SYMPTOMS
select DATE_FORMAT(Periode, '%Y-%m') MONTH, avg(ResolvedTime_Second/3600), min(ResolvedTime_Second/3600), max(ResolvedTime_Second/3600)
from dm_sapu_jagad dsj
where product = 'MyTens GoBeyond' and (Periode between '2023-01-01 00:00:00' AND '2023-05-31 23:59:59')
group by 1
order by 1;
