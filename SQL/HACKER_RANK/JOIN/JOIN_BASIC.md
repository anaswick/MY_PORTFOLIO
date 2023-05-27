## Platform : Hacker Rank
## Skill Tested : SQL BASIC JOIN

Every SQL queries I wrote is MySQL queries

## POPULATION CENSUS

Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:

![city table](https://github.com/anaswick/my_portfolio/assets/24541471/5425e1f2-73a4-45f7-8402-c2f61cb2cc2f)

![country table](https://github.com/anaswick/my_portfolio/assets/24541471/2af75533-cefd-4738-a42d-8238d5244acb)

#### Query
```
SELECT SUM(A.POPULATION)
FROM CITY A
JOIN COUNTRY B
ON A.COUNTRYCODE = B.CODE
WHERE B.CONTINENT = 'ASIA'
```

## AFRICAN CITIES

Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:

![city table](https://github.com/anaswick/my_portfolio/assets/24541471/5425e1f2-73a4-45f7-8402-c2f61cb2cc2f)

![country table](https://github.com/anaswick/my_portfolio/assets/24541471/2af75533-cefd-4738-a42d-8238d5244acb)

#### Query
```
SELECT A.NAME
FROM CITY A
JOIN COUNTRY B
ON A.COUNTRYCODE = B.CODE
WHERE B.CONTINENT = 'AFRICA'
```

