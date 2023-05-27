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

## JAPAN POPULATION

Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

Input Format

![city](https://github.com/anaswick/my_portfolio/assets/24541471/b57fa79c-a5ab-4507-be7e-f71238edce8b)

#### Query
```
SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';
'''

## POPULATION DENSITY DIFFERENCE

Query the difference between the maximum and minimum populations in CITY.


Input Format

![city](https://github.com/anaswick/my_portfolio/assets/24541471/b57fa79c-a5ab-4507-be7e-f71238edce8b)

#### Query
```
SELECT (MAX(POPULATION)-MIN(POPULATION))
FROM CITY;
'''


## THE BLUNDER

Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.

Input Format

The EMPLOYEES table is described as follows:

![SALARY](https://github.com/anaswick/my_portfolio/assets/24541471/e94e11c7-4050-40b4-86fd-81c1c70365e7)

#### Query
```
SELECT CEIL(AVG(SALARY) - AVG(REPLACE(SALARY,'0','')))
FROM EMPLOYEES
'''





