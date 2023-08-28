# 017 Weather Observation Station 20.md

A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.

Input Format

The STATION table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/d8ae354c-2fe0-4a1c-9ab8-ab0318ebb265)

where LAT_N is the northern latitude and LONG_W is the western longitude.

# Solution
```
SELECT ROUND(S.LAT_N, 4) FROM STATION S 
    WHERE 
        (SELECT COUNT(LAT_N) FROM STATION WHERE LAT_N > S.LAT_N) 
        = (SELECT COUNT(LAT_N) FROM STATION WHERE LAT_N < S.LAT_N);
```

