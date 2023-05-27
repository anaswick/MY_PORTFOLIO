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


## TOP EARNERS

We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.

Input Format

The Employee table containing employee data for a company is described as follows:

![top earners](https://github.com/anaswick/my_portfolio/assets/24541471/906654a5-30b7-4d10-b71d-9859ea6ba73c)

where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is the their monthly salary.

![top earners 2](https://github.com/anaswick/my_portfolio/assets/24541471/f37d6266-57bb-4512-a24d-313ee2d6946f)

#### Query
```
SELECT MAX(SALARY*MONTHS), COUNT(*)
FROM EMPLOYEE
WHERE (SALARY*MONTHS) = (SELECT MAX(SALARY*MONTHS) FROM EMPLOYEE)
```

## Weather Observation Station 2

Query the following two values from the STATION table:

1. The sum of all values in LAT_N rounded to a scale of  decimal places.
2. The sum of all values in LONG_W rounded to a scale of  decimal places.

Input Format

The STATION table is described as follows:

![weather observation 2](https://github.com/anaswick/my_portfolio/assets/24541471/ab27944a-247f-4fef-8edb-3bf4a2ed59f9)

where LAT_N is the northern latitude and LONG_W is the western longitude.

#### Query
```
SELECT ROUND(SUM(LAT_N),2) AS LAT, ROUND(SUM(LONG_W),2) AS LAT
FROM STATION
```

## Weather Observation Station 13

Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than  and less than . Truncate your answer to  decimal places.

Input Format

The STATION table is described as follows:

![weather observation 2](https://github.com/anaswick/my_portfolio/assets/24541471/ab27944a-247f-4fef-8edb-3bf4a2ed59f9)

where LAT_N is the northern latitude and LONG_W is the western longitude.

#### Query
```
SELECT ROUND(SUM(LAT_N),4)
FROM STATION
WHERE LAT_N BETWEEN 38.7880 AND 137.2345
```

## Weather Observation Station 14

Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than . Truncate your answer to  decimal places.

Input Format

The STATION table is described as follows:

![weather observation 2](https://github.com/anaswick/my_portfolio/assets/24541471/ab27944a-247f-4fef-8edb-3bf4a2ed59f9)

where LAT_N is the northern latitude and LONG_W is the western longitude.

#### Query
```
SELECT ROUND(MAX(LAT_N),4) 
FROM STATION
WHERE LAT_N < 137.2345;
```

## Weather Observation Station 15

Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than . Round your answer to  decimal places.

Input Format

The STATION table is described as follows:

![weather observation 2](https://github.com/anaswick/my_portfolio/assets/24541471/ab27944a-247f-4fef-8edb-3bf4a2ed59f9)

where LAT_N is the northern latitude and LONG_W is the western longitude.

#### Query
```
SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N = (SELECT(MAX(LAT_N)) FROM STATION WHERE LAT_N < 137.2345);
```

## Weather Observation Station 16

Query the smallest Northern Latitude (LAT_N) from STATION that is greater than . Round your answer to  decimal places.

Input Format

The STATION table is described as follows:

![weather observation 2](https://github.com/anaswick/my_portfolio/assets/24541471/ab27944a-247f-4fef-8edb-3bf4a2ed59f9)

where LAT_N is the northern latitude and LONG_W is the western longitude.

#### Query
```
SELECT ROUND(MIN(LAT_N),4)
FROM STATION
WHERE LAT_N > 38.7780;
```

## Weather Observation Station 17

Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than . Round your answer to  decimal places.

Input Format

The STATION table is described as follows:

![weather observation 2](https://github.com/anaswick/my_portfolio/assets/24541471/ab27944a-247f-4fef-8edb-3bf4a2ed59f9)

where LAT_N is the northern latitude and LONG_W is the western longitude.

#### Query
```
SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N) FROM STATION WHERE LAT_N > 38.7780)
```

## Weather Observation Station 18

Consider  and  to be two points on a 2D plane.

1. a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
2. b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
3. c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
4. d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points  and  and round it to a scale of  decimal places.

Input Format

The STATION table is described as follows:

![weather observation 2](https://github.com/anaswick/my_portfolio/assets/24541471/ab27944a-247f-4fef-8edb-3bf4a2ed59f9)

where LAT_N is the northern latitude and LONG_W is the western longitude.

#### Query
```
SELECT ROUND(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W)- MAX(LONG_W)),4)
FROM STATION;
```
