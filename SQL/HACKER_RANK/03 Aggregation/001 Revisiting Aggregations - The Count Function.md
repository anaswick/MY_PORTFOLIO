# 001 Revisiting Aggregations - The Count Function

Query a count of the number of cities in CITY having a Population larger than .

Input Format

The CITY table is described as follows: 

![image](https://github.com/anaswick/my_portfolio/assets/24541471/b96a70c4-62b9-49d1-9607-be6191cfd854)

# Solution
```
select count(name)
from city
where population > 100000;
```
