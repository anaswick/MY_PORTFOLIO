# 007 The Blunder

Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.

Input Format

The EMPLOYEES table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/1efb97b3-098d-423c-803a-cd4d38574b36)

Note: Salary is per month.

Constraints

1000 < Salary < 10^5

Sample Input

![image](https://github.com/anaswick/my_portfolio/assets/24541471/50299f24-2660-4dcb-9400-f166dda9c6ef)

Sample Output
```
2061
```

Explanation

The table below shows the salaries without zeros as they were entered by Samantha:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/4858bef0-6b82-476a-a793-27fa377cfd64)

Samantha computes an average salary of 98.00 . The actual average salary is 2159.00.

The resulting error between the two calculations is 2159.00 - 98.00 = 2061.00 . Since it is equal to the integer , it does not get rounded up.

# Solution
```
SELECT CEIL(AVG(Salary)-AVG(REPLACE(Salary,'0',''))) 
FROM EMPLOYEES;
```
