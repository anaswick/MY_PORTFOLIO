# 003 Revisiting Aggregations - Averages

Query the average population of all cities in CITY where District is California.

Input Format

The CITY table is described as follows: 

![image](https://github.com/anaswick/my_portfolio/assets/24541471/3ce6f7b3-c1bb-4b93-89cd-39e7d164e846)

# Solution
```
select avg(population)
from city
where district = 'California';
```
