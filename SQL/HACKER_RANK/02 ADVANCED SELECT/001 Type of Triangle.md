# 001 Type of Triangle

Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
Input Format

The TRIANGLES table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/a11bf86d-2caf-404a-b052-fe55dba2c487)

Each row in the table denotes the lengths of each of a triangle's three sides.

Sample Input

![image](https://github.com/anaswick/my_portfolio/assets/24541471/8ca9ebb0-2cff-4843-bd5a-ab92c3bd5cf1)

Sample Output
```
Isosceles
Equilateral
Scalene
Not A Triangle
```

# Solution
```
select case
when (a + b <= c or a + c <= b or b + c <= a) then 'Not A Triangle'
when (a = b and b = c) then 'Equilateral'
when (a = b or a = c or b = c) then 'Isosceles'
else 'Scalene'
end 
from triangles;
```
