# 018 Higher Than 75 Marks

Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.


The STUDENTS table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/cc11450b-b4bd-4b26-b378-ca5930f73fbe)

Input Format

The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.

![image](https://github.com/anaswick/my_portfolio/assets/24541471/c86afba5-884a-43d4-b670-c813b3cca901)

Sample Output

Ashley
Julia
Belvet

Explanation

Only Ashley, Julia, and Belvet have Marks > . If you look at the last three characters of each of their names, there are no duplicates and 'ley' < 'lia' < 'vet'.

# Solution
```
select name
from students
where marks > 75
order by right(name,3),id;
```
