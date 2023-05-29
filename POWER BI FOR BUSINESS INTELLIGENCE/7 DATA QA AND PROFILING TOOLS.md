# DATA QA AND PROFILING TOOLS

## DATA PROFILING : COLUMN QUALITY

**Profiling tools** like **column quality, column distribution, and column profile** allow you to explore the quality, composition, and distribution of your data before loading it into the Power BI Front-end

PRO TIP : Profiling tools are a great way to **quickly find and address common data quality issues in one place**, instead of having to manually apply multiple tools or filters

**Column quality** shows the percentage of values within a column that are **valid**, contains **errors**, or are **empty**.

![data profiling](https://github.com/anaswick/my_portfolio/assets/24541471/87039b32-3553-4eee-a533-d4365caf5b4b)

![data profiling 2](https://github.com/anaswick/my_portfolio/assets/24541471/406660ee-fd09-4a4c-b705-9682d0ae7543)

___

**Column distribution** provides a sample distribution of the data in a column.

![column distribution](https://github.com/anaswick/my_portfolio/assets/24541471/7845ae07-c693-41d6-9d6e-fd678ac4c5a2)

![column distribution 2](https://github.com/anaswick/my_portfolio/assets/24541471/36947b67-65c8-41da-99bd-0bd21032eaca)

___

**Column profile** provides a more holistic view of the data in a column, including a sample distribution and profiling statistics.

![column profile](https://github.com/anaswick/my_portfolio/assets/24541471/0c0b2f7c-cd9c-4ee8-bfd4-db4ae92f7adb)

**Column statistics** provide more detailes profiling metrics, including :
1. **Count** : total number of values in column
2. **Distinct count** : total number of distinct values, whether they appear once or multiple times
3. **Unique** : total number of values that appear exactly once
4. **Min and max** : lowest and highest observation values (typically only useful for numerical values)

___

## TUTORIAL

1. Load the .csv files name AdventureWorks Customer Lookup
2. Rename the queries to Customer Lookup
3. Make sure every column has the right data type
4. Click on View menu and enable
  - Column quality
  - Column distribution
  - Column profile
5. Actually this data profiling only based on first 1000 rows, try to change it into based on entire datasets

![data profiling 3](https://github.com/anaswick/my_portfolio/assets/24541471/97912721-d705-46af-a4dc-bc012c8e13c3)

![data profiling 4](https://github.com/anaswick/my_portfolio/assets/24541471/02bf5918-7fdf-4a0e-b070-8bde5eb8a57e)

Remove errors and remove empty

![remove errors](https://github.com/anaswick/my_portfolio/assets/24541471/c441f3e1-61b4-4b26-bc9c-16f1bb7b01ba)

![remove empty](https://github.com/anaswick/my_portfolio/assets/24541471/ddcdd5c6-cbdb-411c-9922-d5cb4d3dab0d)

If we want to check what causing the errors, we can use KEEP ERRORS

![keep errors](https://github.com/anaswick/my_portfolio/assets/24541471/3ee1db27-25d5-4da5-ae27-a55318bc71a1)

![keep errors 2](https://github.com/anaswick/my_portfolio/assets/24541471/5b3c4602-2b1c-4cbd-83bb-7a8d07524792)

