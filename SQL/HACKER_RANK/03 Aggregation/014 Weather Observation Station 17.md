# 014 Weather Observation Station 17

Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than . Round your answer to  decimal places.

Input Format

The STATION table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/6d3c097d-9a61-4220-8fdf-97395ab687fd)

where LAT_N is the northern latitude and LONG_W is the western longitude.

# Solution

```
select round(min(long_w),4)
from station
where lat_n = 
(select min(lat_n) from station where lat_n > 38.7780)
```
