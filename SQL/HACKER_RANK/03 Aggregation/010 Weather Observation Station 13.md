# 010 Weather Observation Station 13

Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than  and less than . Truncate your answer to  decimal places.

Input Format

The STATION table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/006a3de0-a14c-4972-979f-d1a28bb4d255)

where LAT_N is the northern latitude and LONG_W is the western longitude.

# Solution

```
select round(sum(lat_n),4)
from station
where lat_n between 38.7880 and 137.2345;
```
