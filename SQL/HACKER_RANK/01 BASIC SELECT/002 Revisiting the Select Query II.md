# 002 Revisiting the Select Query II

Query the NAME field for all American cities in the CITY table with populations larger than **120000**. The CountryCode for America is USA.

The CITY table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/7e0042af-7940-4244-9416-461f25a203cd)

# Solution

```
select name
from city
where population > 120000 and countrycode = 'USA';
```
