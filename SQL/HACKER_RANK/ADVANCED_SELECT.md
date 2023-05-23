## Platform : Hacker Rank
## Difficulty : Advanced
## Skill Tested : SQL

Every SQL queries I wrote is MySQL queries

### Binary Tree Nodes
---
You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

![binary tree nodes](https://github.com/anaswick/my_portfolio/assets/24541471/99202076-115e-400d-82e0-df8c29e35e98)

Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.


Sample Input

![binary tree nodes input](https://github.com/anaswick/my_portfolio/assets/24541471/00248e1a-0aef-4bbb-978a-3c6ca715c179)

```
select N,
       if(P is null, 'Root', if((select count(*) from BST where P = B.N)> 0, 'Inner', 'Leaf')) 
from BST as B 
order by N;

```

### New Companies
---
Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy:

![new companies](https://github.com/anaswick/my_portfolio/assets/24541471/3d82bcdb-af6b-4fca-985d-c4383aaeb493)

Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

Note:

The tables may contain duplicate records.
The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.

---
Input Format

The following tables contain company data:


- Company: The company_code is the code of the company and founder is the founder of the company.

![1 company](https://github.com/anaswick/my_portfolio/assets/24541471/4059312d-9618-4180-962f-a594aac495a3)

- Lead_Manager: The lead_manager_code is the code of the lead manager, and the company_code is the code of the working company

![2 lead manager](https://github.com/anaswick/my_portfolio/assets/24541471/215f2377-f472-4a59-9534-fffdea8ebfb0)

- Senior_Manager: The senior_manager_code is the code of the senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company.

![3 senior manager](https://github.com/anaswick/my_portfolio/assets/24541471/d1ab363d-144b-40b2-a980-55796051a20f)

- Manager: The manager_code is the code of the manager, the senior_manager_code is the code of its senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company

![manager](https://github.com/anaswick/my_portfolio/assets/24541471/a357ba67-bf90-4e0e-9c78-5a5f5691baa2)

- Employee: The employee_code is the code of the employee, the manager_code is the code of its manager, the senior_manager_code is the code of its senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company.

![employee](https://github.com/anaswick/my_portfolio/assets/24541471/84187f28-eadc-4136-85fd-9091f9b68875)

#### Query

```
SELECT COMPANY_CODE, FOUNDER,
(SELECT COUNT(DISTINCT LEAD_MANAGER_CODE) FROM LEAD_MANAGER WHERE COMPANY_CODE = C.COMPANY_CODE),
(SELECT COUNT(DISTINCT SENIOR_MANAGER_CODE) FROM SENIOR_MANAGER WHERE COMPANY_CODE = C.COMPANY_CODE),
(SELECT COUNT(DISTINCT MANAGER_CODE) FROM MANAGER WHERE COMPANY_CODE = C.COMPANY_CODE),
(SELECT COUNT(DISTINCT EMPLOYEE_CODE) FROM EMPLOYEE WHERE COMPANY_CODE = C.COMPANY_CODE)
FROM COMPANY C
ORDER BY COMPANY_CODE;
```

### Occupations
---
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

Input Format

The OCCUPATIONS table is described as follows:

![occupations](https://github.com/anaswick/my_portfolio/assets/24541471/e19da0f8-71ab-4554-a551-e48fad816bbf)

Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

Sample Input

![sample input occupations](https://github.com/anaswick/my_portfolio/assets/24541471/50f08c73-b340-43ca-84a6-fb02c868a928)


Explanation

The first column is an alphabetically ordered list of Doctor names. <br>
The second column is an alphabetically ordered list of Professor names. <br>
The third column is an alphabetically ordered list of Singer names. <br>
The fourth column is an alphabetically ordered list of Actor names. <br>
The empty cell data for columns with less than the maximum number of names per occupation (in this case, the Professor and Actor columns) are filled with NULL values. <br>

```
select
    Doctor,
    Professor,
    Singer,
    Actor
from (

    select
        NameOrder,
        max(case Occupation when 'Doctor' then Name end) as Doctor,
        max(case Occupation when 'Professor' then Name end) as Professor,
        max(case Occupation when 'Singer' then Name end) as Singer,
        max(case Occupation when 'Actor' then Name end) as Actor
    from (
            select
                Occupation,
                Name,
                row_number() over(partition by Occupation order by Name ASC) as NameOrder
            from Occupations
         ) as NameLists
    group by NameOrder
    ) as Names
 ```
