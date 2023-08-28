# 006 Japanese Cities Name

Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
The CITY table is described as follows:


![image](https://github.com/anaswick/my_portfolio/assets/24541471/d7bdee85-2b74-4aba-8637-6565bf41af01)

# Solution

```
select name
from city
where countrycode = 'JPN'
```
