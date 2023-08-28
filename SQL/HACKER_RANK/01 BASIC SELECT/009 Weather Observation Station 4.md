# 009 Weather Observation Station 4

Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
The STATION table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/601e715a-7916-4d55-bd45-81ddc6bfb489)

where LAT_N is the northern latitude and LONG_W is the western longitude.

For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru', there are 2 different city names: 'New York' and 'Bengalaru'. The query returns , because

# Solution
```
select count(city)-count(distinct(city))
from station;
```
