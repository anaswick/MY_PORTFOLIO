# 008 Contest Leaderboard

You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

The total score of a hacker is the sum of their maximum scores for all of the challenges. Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of  from your result.

**Input Format**

The following tables contain contest data:

Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker.

![image](https://github.com/anaswick/my_portfolio/assets/24541471/17843928-314d-4514-ad95-cd7b49b13b43)

Submissions: The submission_id is the id of the submission, hacker_id is the id of the hacker who made the submission, challenge_id is the id of the challenge for which the submission belongs to, and score is the score of the submission

![image](https://github.com/anaswick/my_portfolio/assets/24541471/35277542-7b5f-4a4e-af61-154dd6b22aad)

**Sample Input**

Hackers Table:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/0af63f75-c190-4444-b3fe-add725da3ce1)

Submissions Table: 

![image](https://github.com/anaswick/my_portfolio/assets/24541471/51ae2e1e-08fd-452f-ad1e-32862ebcb7cb)

**Sample Output**

```
4071 Rose 191
74842 Lisa 174
84072 Bonnie 100
4806 Angela 89
26071 Frank 85
80305 Kimberly 67
49438 Patrick 43
```

**Explanation**

Hacker 4071 submitted solutions for challenges 19797 and 49593, so the total score .
= 95 + max(43.96) = 191

Hacker 74842 submitted solutions for challenges 19797 and 63132, so the total score 
= max(98,5) + 76 = 174

Hacker 84072 submitted solutions for challenges 49593 and 63132, so the total score .
=100 + 0 = 100

The total scores for hackers 4806, 26071, 80305, and 49438 can be similarly calculated.

# Solution
```
SELECT X.hacker_id, 
(SELECT H.NAME FROM HACKERS H
                      WHERE H.HACKER_ID = X.HACKER_ID) NAME, 
SUM(X.SCORE) TOTAL_SCORE FROM 
  (SELECT HACKER_ID, MAX(SCORE) SCORE FROM SUBMISSIONS S
   GROUP BY 1, S.CHALLENGE_ID) X 
GROUP BY 1
HAVING TOTAL_SCORE > 0
ORDER BY TOTAL_SCORE DESC, HACKER_ID;
```
