# 011 Weather Observation Station 6

Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/439a52c7-1e41-4e02-b9f3-3664eb689290)

where LAT_N is the northern latitude and LONG_W is the western longitude.

# Solution

```
select distinct city
from station
where left(city,1) in ('a','i','u','e','o');
```
