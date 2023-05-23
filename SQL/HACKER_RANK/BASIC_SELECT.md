Platform : Hacker Rank
Difficulty : Easy
Skill Tested : SQL

Every SQL queries I wrote is MySQL queries

### Weather Observation 5
---
```
SELECT CITY, LENGTH(CITY)
FROM STATION 
ORDER BY LENGTH(CITY) ASC, CITY ASC
limit 1;

SELECT CITY, LENGTH(CITY)
FROM STATION 
ORDER BY LENGTH(CITY) DESC, CITY ASC
limit 1;
```

### Weather Observation 6
---
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

![weather observation 6](https://github.com/anaswick/my_portfolio/assets/24541471/d157be95-6f29-4413-858b-b2b66ef0dea9)

where LAT_N is the northern latitude and LONG_W is the western longitude.

#### Query

```
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY,1) IN ('a','i','u','e','o')
```


### Weather Observation Station 7
---
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

![weather observation 6](https://github.com/anaswick/my_portfolio/assets/24541471/d157be95-6f29-4413-858b-b2b66ef0dea9)
where LAT_N is the northern latitude and LONG_W is the western longitude.

```
SELECT DISTINCT CITY
FROM STATION
WHERE RIGHT(CITY,1) IN ('a','i','u','e','o');
```
