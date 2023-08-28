# 012 Weather Observation Station 7

Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/ea22b3b1-c087-4c39-b0df-af93bfae65f1)

where LAT_N is the northern latitude and LONG_W is the western longitude.

# Solution
```
select distinct city
from station
where right(city,1) in ('a','i','u','e','o');
```
