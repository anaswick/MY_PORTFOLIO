# 006 Ollivanders Inventory

Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.

Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age. Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.

**Input Format**

The following tables contain data on the wands in Ollivander's inventory:

- Wands: The id is the id of the wand, code is the code of the wand, coins_needed is the total number of gold galleons needed to buy the wand, and power denotes the quality of the wand (the higher the power, the better the wand is). 

![image](https://github.com/anaswick/my_portfolio/assets/24541471/a9a12c1c-1f84-496a-8050-51f3629ec728)

- Wands_Property: The code is the code of the wand, age is the age of the wand, and is_evil denotes whether the wand is good for the dark arts. If the value of is_evil is 0, it means that the wand is not evil. The mapping between code and age is one-one, meaning that if there are two pairs, (code1, age1)  and , (code2, age2) then  and code1 != code2 and age1 != age2.

![image](https://github.com/anaswick/my_portfolio/assets/24541471/14492595-f9a4-4b5d-9320-ab8f28f43ea4)

**Sample Input**

Wands Table: 

![image](https://github.com/anaswick/my_portfolio/assets/24541471/25742845-9a7d-45cb-9e07-e2c8b9893c49)

Wands_Property Table:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/9fcab43c-14e5-46bb-944d-578e96899d13)

**Sample Output**
```
9 45 1647 10
12 17 9897 10
1 20 3688 8
15 40 6018 7
19 20 7651 6
11 40 7587 5
10 20 504 5
18 40 3312 3
20 17 5689 3
5 45 6020 2
14 40 5408 1
```

**Explanation**

The data for wands of age 45 (code 1):

![image](https://github.com/anaswick/my_portfolio/assets/24541471/b6bbdb41-4775-4419-801f-12d488de43c3)

![image](https://github.com/anaswick/my_portfolio/assets/24541471/2533674a-2c3b-4422-b074-44b857180142)

The data for wands of age 40 (code 2):

![image](https://github.com/anaswick/my_portfolio/assets/24541471/22bbe693-a1c4-48d5-b14f-1d0c1bec05e8)

![image](https://github.com/anaswick/my_portfolio/assets/24541471/e479e16f-542a-42ac-bcbe-15421888e6d6)

The data for wands of age 17 (code 5):

![image](https://github.com/anaswick/my_portfolio/assets/24541471/7b21bdfb-bc0d-4950-b4eb-9db5389d72f0)

![image](https://github.com/anaswick/my_portfolio/assets/24541471/084271c6-10ff-4916-9e9e-9f5ff6119aef)
