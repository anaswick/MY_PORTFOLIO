# 003 Average Population of Each Continent

Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/63a87988-8a19-4f2d-9184-20865bd8de7b)

![image](https://github.com/anaswick/my_portfolio/assets/24541471/b9d76ce1-92b7-443a-b2d5-a56f346ac65f)

# Solution
```
select co.continent, floor(avg(c.population))
from city c
join country co
on c.countrycode = co.code
group by co.continent;
```
