# 005 Japan Population

Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

Input Format

The CITY table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/24961fbd-d477-4c29-a743-923fe4cf625f)

# Solution
```
select sum(population)
from city
where countrycode = 'JPN';
```
