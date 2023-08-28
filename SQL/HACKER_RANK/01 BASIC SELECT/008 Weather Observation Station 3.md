# 008 Weather Observation Station 3

Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
The STATION table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/c28d0d4a-e37e-42a6-aa79-a763c9a64d75)

where LAT_N is the northern latitude and LONG_W is the western longitude.

# Solution
```
select distinct city
from station
where id % 2 = 0;
```
