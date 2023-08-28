# 004 Average Population

Query the average population for all cities in CITY, rounded down to the nearest integer.

Input Format

The CITY table is described as follows: 

![image](https://github.com/anaswick/my_portfolio/assets/24541471/ed71fc27-b871-4d77-b2cc-1618f84bd2f8)

# Solution
```
select floor(avg(population))
from city;
```
