# 006 Population Density Differece

Query the difference between the maximum and minimum populations in CITY.

Input Format

The CITY table is described as follows: 

![image](https://github.com/anaswick/my_portfolio/assets/24541471/26f558fe-4be7-4a28-b885-1a103ea07126)

# Solution
```
select max(population) - min(population) as population_density_difference
from city;
```
