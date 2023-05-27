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
## Weather Observation Station 19

Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where a,b are the respective minimum and maximum values of Northern Latitude (LAT_N) and  c,d are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points  and  and format your answer to display  decimal digits.

Input Format

The STATION table is described as follows:

![weather observation 2](https://github.com/anaswick/my_portfolio/assets/24541471/ab27944a-247f-4fef-8edb-3bf4a2ed59f9)

where LAT_N is the northern latitude and LONG_W is the western longitude.

#### Query
```
SELECT ROUND(SQRT(POWER(ABS(MIN(LAT_N) - MAX(LAT_N)), 2) + POWER(ABS(MIN(LONG_W) - MAX(LONG_W)), 2)), 4)
FROM STATION;
```
## Weather Observation Station 20

A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.

Input Format

The STATION table is described as follows:

![weather observation 2](https://github.com/anaswick/my_portfolio/assets/24541471/ab27944a-247f-4fef-8edb-3bf4a2ed59f9)

where LAT_N is the northern latitude and LONG_W is the western longitude.

#### Query
```
SET @row_index := -1; -- this is for setting index start from -1 when you didn't modify it

SELECT ROUND(LAT_N,4)
FROM (
    SELECT @row_index:=@row_index + 1 AS row_index, LAT_N
    FROM STATION
    ORDER BY LAT_N
  ) AS subq
  WHERE subq.row_index 
  IN (FLOOR(@row_index / 2) , CEIL(@row_index / 2));
  ```

*Query Breakdown*

SET @row_index := -1; -- this is for setting index start from -1 when you didn't modify it
The MySQL code you provided is a variable assignment statement. In this case, it sets the value of the user-defined variable @row_index to -1.<br>
Variables in MySQL are used to store values that can be referenced and manipulated within a session or a script. They are preceded by the "@" symbol, such as @row_index in this case.<br>
The SET statement is used to assign a value to a variable. In your code, @row_index is being assigned the value -1. This means that @row_index will hold the value -1 until it is modified or the session ends.<br>
User-defined variables can be useful in MySQL for storing intermediate results, performing calculations, or controlling the flow of a script or query. They can be referenced and used in subsequent SQL statements within the same session or script.<br>

SELECT @row_index:=@row_index + 1 AS row_index
The MySQL code you provided is a SELECT statement that assigns a new value to the user-defined variable @row_index and retrieves the updated value in the result set.<br>
Let's break down the code:
@row_index is a user-defined variable that holds a numeric value. It is being used to keep track of a row index. <br>
:= is the assignment operator in MySQL. It assigns the value on the right side of the operator to the variable on the left side. In this case, @row_index is assigned the value of @row_index + 1.<br>
@row_index + 1 increments the value of @row_index by 1. The new value is then assigned back to @row_index.<br>
AS row_index is an alias given to the result of the assignment. It means that the column displaying the updated value will be labeled as "row_index" in the result set.<br>
The SELECT statement retrieves the updated value of @row_index as "row_index" in the result set. This can be useful when you want to generate a row index or a sequential number for each row in a query result.<br>
Note that the code you provided assumes that the @row_index variable has been previously assigned a value using SET @row_index := -1; or through some other means.<br>

