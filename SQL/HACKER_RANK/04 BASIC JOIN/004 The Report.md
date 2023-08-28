#

You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.

![image](https://github.com/anaswick/my_portfolio/assets/24541471/942621cf-c685-4d7b-935d-d1b1dc1f79af)

Grades contains the following data:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/42ad6418-be00-410d-be1f-b3f9bb06618f)

Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8. The report must be in descending order by grade -- i.e. higher grades are entered first. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.

Write a query to help Eve.

**Sample Input**

![image](https://github.com/anaswick/my_portfolio/assets/24541471/a806977a-02e9-42e3-9b62-4c34e4bb86d0)

**Sample Output**

```
Maria 10 99
Jane 9 81
Julia 9 88 
Scarlet 8 78
NULL 7 63
NULL 7 68
```

**Note**

Print "NULL"  as the name if the grade is less than 8.

**Explanation**

Consider the following table with the grades assigned to the students:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/595767f8-c4f6-41a9-9013-fbaad2c65091)

So, the following students got 8, 9 or 10 grades:

Maria (grade 10)
Jane (grade 9)
Julia (grade 9)
Scarlet (grade 8)

# Solution
```
SELECT IF(g.GRADE>=8, s.NAME, NULL),g.GRADE, s.MARKS
FROM GRADES g, STUDENTS s
WHERE s.MARKS BETWEEN g.MIN_MARK AND g.MAX_MARK
ORDER BY g.GRADE DESC, s.NAME;
```
