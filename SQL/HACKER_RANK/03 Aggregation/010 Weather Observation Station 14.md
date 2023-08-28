# 010 Weather Observation Station 14

Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than . Truncate your answer to  decimal places.

Input Format

The STATION table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/8ae04c22-230d-43aa-bd7e-490c3d5fb32d)

where LAT_N is the northern latitude and LONG_W is the western longitude.

# Solution

```
select round(max(lat_n),4)
from station
where lat_n < 137.2345;
```
