# 015 Weather Observation Station 18

Consider  and  to be two points on a 2D plane.

 a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
 b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
 c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
 d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points  and  and round it to a scale of  decimal places.

Input Format

The STATION table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/3831e1ab-f18a-4c65-8155-f2b3c86fa8e5)

where LAT_N is the northern latitude and LONG_W is the western longitude.

# Solution

```
SELECT ROUND(ABS(MIN(LAT_N)-MAX(LAT_N))+ABS(MIN(LONG_W)-MAX(LONG_W)),4)
FROM STATION;
```
