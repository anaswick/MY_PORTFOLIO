# 019 Employee Names

Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

Input Format

The Employee table containing employee data for a company is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/64f09a9b-0bde-476b-ad99-8f90da30b787)

where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is their monthly salary.

Sample Input

![image](https://github.com/anaswick/my_portfolio/assets/24541471/a11d6416-8805-4d08-aef3-e58d553402c8)

Sample Output
```
Angela
Bonnie
Frank
Joe
Kimberly
Lisa
Michael
Patrick
Rose
Todd
```

# Solution
```
select name
from employee
order by name;
```
