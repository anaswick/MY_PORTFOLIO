# 007 Challenges

Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.

**Input Format**

The following tables contain challenge data:

- Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker.

![image](https://github.com/anaswick/my_portfolio/assets/24541471/4b4e44f8-4e4e-4ada-8b5a-f2688c22ff24)

- Challenges: The challenge_id is the id of the challenge, and hacker_id is the id of the student who created the challenge

![image](https://github.com/anaswick/my_portfolio/assets/24541471/9249152d-673e-4e2d-8754-8af0a19ea0b0)

**Sample Input**

Hackers Table:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/1bc46325-4c88-4d53-898f-3ef4d057f4a2)

Challenges Table:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/2fa20195-50a2-4335-8f98-9c65f8f02d45)

**Sample Output 0**
```
21283 Angela 6
88255 Patrick 5
96196 Lisa 1
```

**Sample Input 1**

Hackers Table:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/7b35d48a-880b-4da2-8b37-2564b8a2a831)

Challenges Table:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/8c3f0a43-41b1-4bda-9b54-e8183beaacb6)

**Sample Output 1**
```
12299 Rose 6
34856 Angela 6
79345 Frank 4
80491 Patrick 3
81041 Lisa 1
```

**Explanation**

For Sample Case 0, we can get the following details:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/c177825b-ce52-4d0b-a119-14e8748e8b6f)

Students  5077 and 62743 both created 4 challenges, but the maximum number of challenges created is 6 so these students are excluded from the result.

For Sample Case 1, we can get the following details:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/1ef3dee5-4c7d-4d85-ac2b-d9ce4df9784f)

Students 12299 and 34856 both created 6 challenges. Because 6 is the maximum number of challenges created, these students are included in the result.

# Solution

```
SELECT H.HACKER_ID, 
       H.NAME, 
       COUNT(C.CHALLENGE_ID) AS C_COUNT
FROM HACKERS H
JOIN CHALLENGES C ON C.HACKER_ID = H.HACKER_ID
GROUP BY H.HACKER_ID, H.NAME
HAVING C_COUNT = 
    (SELECT COUNT(C2.CHALLENGE_ID) AS C_MAX
     FROM CHALLENGES AS C2
     GROUP BY C2.HACKER_ID 
     ORDER BY C_MAX DESC LIMIT 1)
OR C_COUNT IN 
    (SELECT DISTINCT C_COMPARE AS C_UNIQUE
     FROM (SELECT H2.HACKER_ID, 
                  H2.NAME, 
                  COUNT(CHALLENGE_ID) AS C_COMPARE
           FROM HACKERS H2
           JOIN CHALLENGES C ON C.HACKER_ID = H2.HACKER_ID
           GROUP BY H2.HACKER_ID, H2.NAME) COUNTS
     GROUP BY C_COMPARE
     HAVING COUNT(C_COMPARE) = 1)
ORDER BY C_COUNT DESC, H.HACKER_ID;
```
