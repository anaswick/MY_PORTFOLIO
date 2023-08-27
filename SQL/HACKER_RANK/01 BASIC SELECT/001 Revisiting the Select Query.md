# 001 Revisiting the Select Query.md

Query all columns for all American cities in the CITY table with populations larger than **100000**. The CountryCode for America is USA.

The CITY table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/038148d3-0cd6-4a9e-9ccb-a92ac04d180c)

# Solution

```
select *
from city
where population > 100000 and countrycode = 'USA';

```
