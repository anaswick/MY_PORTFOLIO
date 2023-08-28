# 005 Top Competitors

Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

Input Format

The following tables contain contest data:

- Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker.

![image](https://github.com/anaswick/my_portfolio/assets/24541471/1a8cd3f8-5c4a-43b1-8fc9-f08fa3c11892)

- Difficulty: The difficult_level is the level of difficulty of the challenge, and score is the score of the challenge for the difficulty level.

![image](https://github.com/anaswick/my_portfolio/assets/24541471/3982a87c-f25e-4ea8-83f3-21688e942c90)

- Challenges: The challenge_id is the id of the challenge, the hacker_id is the id of the hacker who created the challenge, and difficulty_level is the level of difficulty of the challenge.

![image](https://github.com/anaswick/my_portfolio/assets/24541471/882e7df2-19ba-4b3b-b704-ac31a369b171)

- Submissions: The submission_id is the id of the submission, hacker_id is the id of the hacker who made the submission, challenge_id is the id of the challenge that the submission belongs to, and score is the score of the submission

![image](https://github.com/anaswick/my_portfolio/assets/24541471/0eeb52d3-da10-49ac-95a2-76ab926ca510)

**Sample Input**

Hackers Table

![image](https://github.com/anaswick/my_portfolio/assets/24541471/358318b7-fc37-4e1e-b103-bd220660ee46)

Difficulty Table

![image](https://github.com/anaswick/my_portfolio/assets/24541471/4ef28c5d-8d45-4ff7-886e-4cd4a399c323)

Challenges Table

![image](https://github.com/anaswick/my_portfolio/assets/24541471/5d17aaa3-851b-4bf5-9d73-afe90392f312)

Submissions Table

![image](https://github.com/anaswick/my_portfolio/assets/24541471/d02e8588-6748-4636-b959-6686acaa4d81)

**Sample Output**
```
90411 Joe
```

**Explanation**

Hacker 86870 got a score of 30 for challenge 71055 with a difficulty level of 2, so 86870 earned a full score for this challenge.

Hacker 90411 got a score of 30 for challenge 71055 with a difficulty level of 2, so 90411 earned a full score for this challenge.

Hacker 90411 got a score of 100 for challenge 66730 with a difficulty level of 6, so 90411 earned a full score for this challenge.

Only hacker 90411 managed to earn a full score for more than one challenge, so we print the their hacker_id and name as 2 space-separated values.

# Solution

```
SELECT H.HACKER_ID, H.NAME
FROM HACKERS H
INNER JOIN SUBMISSIONS S
ON H.HACKER_ID = S.HACKER_ID
INNER JOIN CHALLENGES C
ON S.CHALLENGE_ID = C.CHALLENGE_ID
INNER JOIN DIFFICULTY D
ON C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
WHERE S.SCORE = D.SCORE AND C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
GROUP BY H.HACKER_ID, H.NAME
HAVING COUNT(S.HACKER_ID) > 1
ORDER BY COUNT(S.HACKER_ID) DESC, S.HACKER_ID ASC;
```
