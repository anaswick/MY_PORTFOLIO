# 003 Occupations

Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

Input Format

The OCCUPATIONS table is described as follows:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/875e9349-7571-48fa-970e-7501a369e83d)

Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

Sample Input

![image](https://github.com/anaswick/my_portfolio/assets/24541471/70485b04-93f7-4bc3-a9ed-251b42a6b254)

Sample Output
```
Jenny    Ashley     Meera  Jane
Samantha Christeen  Priya  Julia
NULL     Ketty      NULL   Maria
```

Explanation

The first column is an alphabetically ordered list of Doctor names.
The second column is an alphabetically ordered list of Professor names.
The third column is an alphabetically ordered list of Singer names.
The fourth column is an alphabetically ordered list of Actor names.
The empty cell data for columns with less than the maximum number of names per occupation (in this case, the Professor and Actor columns) are filled with NULL values.

# Solution
```
SELECT 
MAX(IF(OCCUPATION = 'DOCTOR',NAME, NULL)) AS DOCTOR,
min(IF(OCCUPATION ='PROFESSOR',NAME, NULL)) AS PROFESSOR,
MIN(IF(OCCUPATION = 'SINGER',NAME, NULL)) AS SINGER,
max(IF(OCCUPATION = 'ACTOR',NAME, NULL)) AS ACTOR
FROM 
(SELECT NAME, OCCUPATION, Row_number() Over(PARTITION BY occupation ORDER BY name)as row_num FROM occupations) as ord group by row_num
```
