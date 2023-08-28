# 005 New Companies

Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/4700a9b0-8dcc-4cdb-99fb-6bd731c931b1)

Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

Note:

The tables may contain duplicate records.
The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.
Input Format

The following tables contain company data:

- Company: The company_code is the code of the company and founder is the founder of the company.

![image](https://github.com/anaswick/my_portfolio/assets/24541471/0832fbbd-f45b-485d-96a1-f529071631d7)

- Lead_Manager: The lead_manager_code is the code of the lead manager, and the company_code is the code of the working company

![image](https://github.com/anaswick/my_portfolio/assets/24541471/ab7495bc-80fd-408e-b047-2e26c9714a92)

- Senior_Manager: The senior_manager_code is the code of the senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company.

![image](https://github.com/anaswick/my_portfolio/assets/24541471/6272d669-ca2f-4c1b-bdbf-27804b640c55)

- Manager: The manager_code is the code of the manager, the senior_manager_code is the code of its senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company.

 ![image](https://github.com/anaswick/my_portfolio/assets/24541471/434ac669-d1e9-46a1-9599-c444a76ea054)

- Employee: The employee_code is the code of the employee, the manager_code is the code of its manager, the senior_manager_code is the code of its senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company.

![image](https://github.com/anaswick/my_portfolio/assets/24541471/e7baeec0-e566-44f2-bc1f-8604e783f68b)

___

Sample Input

Company Table:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/493d104c-0cab-480e-905a-80d663191fec)

Lead_Manager Table:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/d2d85b46-e6eb-4e82-a684-79d663a59b3b)

Senior_Manager Table:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/ae20db77-aca6-4ccf-ac17-ce5e15f7fd77)

Manager Table:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/080f066d-f84b-4f46-b946-fc377707840b)

Employee Table:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/179f10b0-c2ba-4836-ae82-a119b7dbb631)

Sample Output
```
C1 Monika 1 2 1 2
C2 Samantha 1 1 2 2
```

Explanation

In company C1, the only lead manager is LM1. There are two senior managers, SM1 and SM2, under LM1. There is one manager, M1, under senior manager SM1. There are two employees, E1 and E2, under manager M1.

In company C2, the only lead manager is LM2. There is one senior manager, SM3, under LM2. There are two managers, M2 and M3, under senior manager SM3. There is one employee, E3, under manager M2, and another employee, E4, under manager, M3.

# Solution

```
SELECT COMPANY_CODE, FOUNDER,
(SELECT COUNT(DISTINCT LEAD_MANAGER_CODE) FROM LEAD_MANAGER WHERE COMPANY_CODE = C.COMPANY_CODE),
(SELECT COUNT(DISTINCT SENIOR_MANAGER_CODE) FROM SENIOR_MANAGER WHERE COMPANY_CODE = C.COMPANY_CODE),
(SELECT COUNT(DISTINCT MANAGER_CODE) FROM MANAGER WHERE COMPANY_CODE = C.COMPANY_CODE),
(SELECT COUNT(DISTINCT EMPLOYEE_CODE) FROM EMPLOYEE WHERE COMPANY_CODE = C.COMPANY_CODE)
FROM COMPANY C
ORDER BY COMPANY_CODE;
```
