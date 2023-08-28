# 002 African Cities

Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/af00a90f-6c0a-48e3-a63c-33f4087cbc1d)

![image](https://github.com/anaswick/my_portfolio/assets/24541471/b882e88a-4a3d-4bb3-803b-020b5c9ee5ff)

# Solution
```
select c.name city_name
from city c
join country co
on c.countrycode = co.code
where co.continent = 'Africa'
```
