# 020 Employee Salaries

Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than 2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.

Input Format

The Employee table containing employee data for a company is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/a811c500-acfa-479e-9f56-b96a4fd2defd)

where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is the their monthly salary.

Sample Input

![image](https://github.com/anaswick/my_portfolio/assets/24541471/58980d81-0872-4a3f-aac2-23a170137f54)

Sample Output

```
Angela
Michael
Todd
Joe
```

# Solution
```
select name
from employee
where salary > 2000 and months < 10
order by employee_id;
```
