Source : [POSTGRESQL TUTORIAL SELECT](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-select/)

# POSTGRESQL SELECT
___

The SELECT statement has the following clauses:

- Select distinct rows using DISTINCT operator.
- Sort rows using *ORDER BY* clause.
- Filter rows using *WHERE* clause.
- Select a subset of rows from a table using *LIMIT* or *FETCH* clause.
- Group rows into groups using *GROUP BY* clause.
- Filter groups using *HAVING* clause.
- Join with other tables using joins such as *INNER JOIN, LEFT JOIN, FULL OUTER JOIN, CROSS JOIN* clauses.
- Perform set operations using *UNION, INTERSECT, and EXCEPT.*

## POSTGRESQL STATEMENT SYNTAX
___

```
SELECT 
  select_list
FROM
  table_name;
```

## TUTORIAL

### 01 SELECT STATEMENT TO QUERY DATA FROM ONE COLUMN

```
SELECT 
first_name
FROM 
actor;
```

Result in pgAdmin

![1](https://github.com/anaswick/my_portfolio/assets/24541471/5d4de1c1-0bdc-4858-a5f1-b5f7aa5ff167)


### 02 SELECT STATEMENT TO QUERY DATA FROM MULTIPLE COLUMN

```
SELECT 
actor_id,
first_name,
last_name
FROM 
actor;
```

Result in pgAdmin

![2](https://github.com/anaswick/my_portfolio/assets/24541471/47a29f70-6289-4020-b289-5d933a1728ff)

### 03 SELECT STATEMENT TO QUERY DATA FOR ALL COLUMN

```
SELECT 
*
FROM 
actor;
```
Result in pgAdmin

![3](https://github.com/anaswick/my_portfolio/assets/24541471/bbf270c0-af6c-4c3b-8c6a-0c3f34502c42)

### 04 SELECT STATEMENT WITH EXPRESSIONS

**Concatenation**

Option 1

```
SELECT 
first_name || ' ' || last_name AS full_name
FROM 
actor;
```

Option 2

```
SELECT 
CONCAT(first_name,' ',last_name) AS full_name
FROM 
actor;
```

Result in pgAdmin

![4](https://github.com/anaswick/my_portfolio/assets/24541471/9675578e-880b-432a-911c-a9fc18b8471e)

