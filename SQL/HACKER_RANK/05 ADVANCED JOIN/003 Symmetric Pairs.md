# 003 Symmetric Pairs

You are given a table, Functions, containing two columns: X and Y.

![image](https://github.com/anaswick/my_portfolio/assets/24541471/73629908-e4c0-496d-89cb-fed1b533d8f8)

Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.

Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1.

**Sample Input**

![image](https://github.com/anaswick/my_portfolio/assets/24541471/304f604a-0bca-42d7-855f-f734333b4510)

**Sample Output**

```
20 20
20 21
22 23
```

# Solution
```
SELECT X, Y FROM FUNCTIONS F1
    WHERE EXISTS(SELECT * FROM FUNCTIONS F2 WHERE F2.Y = F1.X
    AND F2.X = F1.Y AND F2.X > F1.X) AND (X != Y)
UNION
SELECT X,Y FROM FUNCTIONS F1 WHERE X = Y AND 
    ((SELECT COUNT(*) FROM FUNCTIONS WHERE X = F1.X AND Y = F1.X) > 1)
      ORDER BY X;
```
