# 012 Weather Observation Station 15

Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than . Round your answer to  decimal places.

Input Format

The STATION table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/6fe72fbd-4199-4bd5-97f2-3b7060c4f00c)

where LAT_N is the northern latitude and LONG_W is the western longitude.

# Solution

```
SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N = (
    SELECT MAX(LAT_N)
    FROM STATION
    WHERE LAT_N < 137.2345
);
```
