# 015 Weather Observation Station 10

Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/8c52e68f-bec5-4ee7-a06d-992f5552f448)

# Solution
```
select distinct city
from station
where right(city,1) not in ('a','i','u','e','o');
```
