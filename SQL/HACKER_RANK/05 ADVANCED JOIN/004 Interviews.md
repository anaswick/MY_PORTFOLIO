# 004 Interviews

Samantha interviews many candidates from different colleges using coding challenges and contests. Write a query to print the contest_id, hacker_id, name, and the sums of total_submissions, total_accepted_submissions, total_views, and total_unique_views for each contest sorted by contest_id. Exclude the contest from the result if all four sums are .

Note: A specific contest can be used to screen candidates at more than one college, but each college only holds  screening contest.

**Input Format**

The following tables hold interview data:

Contests: The contest_id is the id of the contest, hacker_id is the id of the hacker who created the contest, and name is the name of the hacker

![image](https://github.com/anaswick/my_portfolio/assets/24541471/16107a1d-27b5-45ef-8a6c-e189560670eb)

Colleges: The college_id is the id of the college, and contest_id is the id of the contest that Samantha used to screen the candidates.

![image](https://github.com/anaswick/my_portfolio/assets/24541471/0f338c2e-0f69-462f-9ef1-46eefbb3cad9)

Challenges: The challenge_id is the id of the challenge that belongs to one of the contests whose contest_id Samantha forgot, and college_id is the id of the college where the challenge was given to candidates.

![image](https://github.com/anaswick/my_portfolio/assets/24541471/ce84912e-7e78-4daf-976f-d3c3bd62a1dc)

View_Stats: The challenge_id is the id of the challenge, total_views is the number of times the challenge was viewed by candidates, and total_unique_views is the number of times the challenge was viewed by unique candidates. 

![image](https://github.com/anaswick/my_portfolio/assets/24541471/7b8e498c-346a-48bd-a8a7-ab26995a3d8a)

Submission_Stats: The challenge_id is the id of the challenge, total_submissions is the number of submissions for the challenge, and total_accepted_submission is the number of submissions that achieved full scores.

![image](https://github.com/anaswick/my_portfolio/assets/24541471/32167a7d-934c-4a29-b701-a4e69307ab27)

**Sample Input**

Contests Table:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/c9d5a4ad-e72b-49a9-9343-65a76492c76c)

Colleges Table:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/f94a05c4-a053-46d9-855b-30a72474ea43)

Challenges Table: 

![image](https://github.com/anaswick/my_portfolio/assets/24541471/55140c22-2e13-4e4b-92a1-de24ba0879c0)

View_Stats Table:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/711b81f0-ec03-4185-b9ef-29ed24b2f1d9)

Submission_Stats Table:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/171f5aee-764f-44f7-abf8-689a0d10cedc)

**Sample Output**
```
66406 17973 Rose 111 39 156 56
66556 79153 Angela 0 0 11 10
94828 80275 Frank 150 38 41 15
```

**Explanation**

The contest 66406 is used in the college 11219. In this college 11219, challenges 18765 and 47127 are asked, so from the view and submission stats:

Sum of total submissions 
= 27+56+28 = 111

Sum of total accepted submissions 
= 10 +18 + 11 = 39

Sum of total views 
= 43+72+26+15 = 156

Sum of total unique views 
= 10+13+19+14 = 56

Similarly, we can find the sums for contests 66556 and 94828.

# Solution
```
SELECT A.CONTEST_ID, A.HACKER_ID, A.NAME, 
        SUM(TOTAL_SUBMISSIONS) AS TOTAL_SUBMISSIONS, 
        SUM(TOTAL_ACCEPTED_SUBMISSIONS) AS TOTAL_ACCEPTED_SUBMISSIONS,
        SUM(TOTAL_VIEWS) AS TOTAL_VIEWS,
        SUM(TOTAL_UNIQUE_VIEWS) AS TOTAL_UNIQUE_VIEWS
FROM CONTESTS AS A
LEFT JOIN COLLEGES AS B
    ON A.CONTEST_ID = B.CONTEST_ID
LEFT JOIN CHALLENGES AS C
    ON B.COLLEGE_ID = C.COLLEGE_ID 
LEFT JOIN (SELECT CHALLENGE_ID, SUM(TOTAL_VIEWS) AS TOTAL_VIEWS, 
                  SUM(TOTAL_UNIQUE_VIEWS) AS TOTAL_UNIQUE_VIEWS
           FROM VIEW_STATS
           GROUP BY CHALLENGE_ID) AS D 
    ON C.CHALLENGE_ID = D.CHALLENGE_ID 
LEFT JOIN (SELECT CHALLENGE_ID, SUM(TOTAL_SUBMISSIONS) AS TOTAL_SUBMISSIONS, 
                  SUM(TOTAL_ACCEPTED_SUBMISSIONS) AS TOTAL_ACCEPTED_SUBMISSIONS
           FROM SUBMISSION_STATS
           GROUP BY CHALLENGE_ID) AS E
    ON C.CHALLENGE_ID = E.CHALLENGE_ID
GROUP BY A.CONTEST_ID, A.HACKER_ID, A.NAME
HAVING (TOTAL_SUBMISSIONS + TOTAL_ACCEPTED_SUBMISSIONS + TOTAL_VIEWS + TOTAL_UNIQUE_VIEWS) > 0 
ORDER BY A.CONTEST_ID;
```
