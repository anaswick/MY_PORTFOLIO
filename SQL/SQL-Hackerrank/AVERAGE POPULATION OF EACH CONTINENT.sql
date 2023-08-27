select co.Continent , floor(avg(c.Population))
from city c
join country co
on c.CountryCode = co.Code
group by co.Continent
