# 005 Japanese Cities Attributes

Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

The CITY table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/5d775c10-108a-489c-ac1a-0d01bc3b669b)

# Solution

```
select *
from city
where countrycode = 'JPN'
```
