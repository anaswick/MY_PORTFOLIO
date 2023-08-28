# 009 Weather Observation Station 2

Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of  decimal places.
The sum of all values in LONG_W rounded to a scale of  decimal places.
Input Format

The STATION table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/3d975862-a5d5-43c6-b77c-5b6b55111ffb)

where LAT_N is the northern latitude and LONG_W is the western longitude.

Output Format

Your results must be in the form:

```
lat lon
```

where lat is the sum of all values in LAT_N and lon is the sum of all values in LONG_W. Both results must be rounded to a scale of 2 decimal places.

# Solution
```
select round(sum(lat_n),2), round(sum(long_w),2)
from station;
```
