# 016 Weather Observation Station 11

Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/652c5000-0eb7-4a79-93e4-ca9ae410f9b8)

where LAT_N is the northern latitude and LONG_W is the western longitude.

# Solution
```
select distinct city
from station
where left(city,1) not in ('a','i','u','e','o') or right(city,1) not in ('a','i','u','e','o');
```
