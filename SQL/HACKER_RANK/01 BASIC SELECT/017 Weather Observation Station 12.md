# 017 Weather Observation Station 12

Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/f468bb23-f7df-46ac-a729-1d3b53eaaddb)


where LAT_N is the northern latitude and LONG_W is the western longitude.

# Solution 
```
select distinct city
from station
where left(city,1) not in ('a','i','u','e','o') and right(city,1) not in ('a','i','u','e','o');
```
