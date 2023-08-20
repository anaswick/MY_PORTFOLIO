-- mengambil 5 baris pertama di sebuah tabel
select *
from address a
limit 5;

-- mengambil 5 baris terakhir di sebuah tabel berdasarkan address_id
select *
from address a
order by address_id DESC
limit 5;

-- mengambil 5 baris pertama setelah baris ke 5
select *
from address a
limit 5
offset 5;
