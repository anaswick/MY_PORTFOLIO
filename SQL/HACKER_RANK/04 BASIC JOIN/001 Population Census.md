# 001 Population Census

Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/d6107e18-485b-49de-ad8b-7e033ee26b29)

![image](https://github.com/anaswick/my_portfolio/assets/24541471/387baa41-1b0e-4cd3-9289-cba73f0e9053)

# Solution
```
select sum(c.population)
from city c
join country co
on c.countrycode = co.code
where co.continent = 'Asia'
```
