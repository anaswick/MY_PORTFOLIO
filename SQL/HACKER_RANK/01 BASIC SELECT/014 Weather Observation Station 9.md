# 014 Weather Observation Station 9

Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/faf6e153-d573-4a81-83ee-459a5f7d6916)

where LAT_N is the northern latitude and LONG_W is the western longitude.

# Solution
```
select distinct city
from station
where left(city,1) not in ('a','i','u','e','o');
```
