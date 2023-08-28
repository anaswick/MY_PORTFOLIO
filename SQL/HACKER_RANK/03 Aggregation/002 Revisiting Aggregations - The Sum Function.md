# 002 Revisiting Aggregations - The Sum Function

Query the total population of all cities in CITY where District is California.

Input Format

The CITY table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/303b475f-aa82-4c5a-a534-04f8413f2eed)

# Solution
```
select sum(population)
from city
where district = 'California';
```
