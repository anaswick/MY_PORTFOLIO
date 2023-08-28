# 013 Weather Observation Station 8

Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/2e1c850d-567d-4792-891a-0f90ab5b3e24)

where LAT_N is the northern latitude and LONG_W is the western longitude.

# Solution
```
select distinct city
from station
where left(city,1) in ('a','i','u','e','o') and right(city,1) in ('a','i','u','e','o');
```
