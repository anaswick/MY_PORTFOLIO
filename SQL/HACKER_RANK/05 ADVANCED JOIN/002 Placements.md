# 002 Placements

You are given three tables: Students, Friends and Packages. Students contains two columns: ID and Name. Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend). Packages contains two columns: ID and Salary (offered salary in $ thousands per month).

![image](https://github.com/anaswick/my_portfolio/assets/24541471/836e57ad-1f44-45ea-942a-5d29207c4f82)

Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer.

**Sample Input**

![image](https://github.com/anaswick/my_portfolio/assets/24541471/e6f0b264-5664-4505-b5b8-9d5a03fe2da8)

**Sample Output**
```
Samantha
Julia
Scarlet
```

**Explanation**

See the following table:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/4e4bb8fc-9bba-4e41-b8f2-1df22001ad18)

Now,

- Samantha's best friend got offered a higher salary than her at 11.55
- Julia's best friend got offered a higher salary than her at 12.12
- Scarlet's best friend got offered a higher salary than her at 15.2
- Ashley's best friend did NOT get offered a higher salary than her

The name output, when ordered by the salary offered to their friends, will be:
- Samantha
- Julia
- Scarlet

# Solution
```
Select S.NAME
FROM STUDENTS S 
JOIN FRIENDS F ON S.ID = F.ID
JOIN PACKAGES P1 ON S.ID = P1.ID
JOIN PACKAGES P2 ON F.FRIEND_ID = P2.ID
WHERE P2.SALARY > P1.SALARY
ORDER BY P2.SALARY;
```
