# 013 Weather Observation Station 116

Query the smallest Northern Latitude (LAT_N) from STATION that is greater than . Round your answer to  decimal places.

Input Format

The STATION table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/8800a602-ef36-4226-bb58-1ecf219dcc2b)

where LAT_N is the northern latitude and LONG_W is the western longitude.

# Solution

```
select round(min(lat_n),4)
from station
where lat_n > 38.7780;
```
