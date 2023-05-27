## Platform : Hacker Rank
## Skill Tested : SQL AGGREGATION

Every SQL queries I wrote is MySQL queries

## REVISITING AGGREGATIONS - THE COUNT FUNCTION

Query a count of the number of cities in CITY having a Population larger than 100.000

Input Format

![city](https://github.com/anaswick/my_portfolio/assets/24541471/b57fa79c-a5ab-4507-be7e-f71238edce8b)

#### Query
```
SELECT COUNT(*) 
FROM CITY
WHERE POPULATION > 100000;
```

## REVISITING AGGREGATIONS - AVERAGES

Query the average population of all cities in CITY where District is California.

Input Format

![city](https://github.com/anaswick/my_portfolio/assets/24541471/b57fa79c-a5ab-4507-be7e-f71238edce8b)

#### Query
```
SELECT AVG(POPULATION) 
FROM CITY
WHERE DISTRICT = 'CALIFORNIA';
```

## AVERAGE POPULATION

Query the average population for all cities in CITY, rounded down to the nearest integer.

Input Format

![city](https://github.com/anaswick/my_portfolio/assets/24541471/b57fa79c-a5ab-4507-be7e-f71238edce8b)

#### Query
```
SELECT FLOOR(AVG(POPULATION))
FROM CITY;
'''

