# APPENDING QUERIES

**Appending** queries allows you to **combine** or **stack** tables sharing the exact same column structure and data types

In other word, we can call it **UNION** like we do in SQL.

*Here we're appending the **AdventureWorks Sales 2020** table to the **AdventureWorks Sales 2021** table, which is valid since they share identical table structures.

***NOTE** : Appending **adds rows** to an existing table/query.

**PRO TIP** : Use the **folder** option (Get Data > More > Folder) to **append all files within a specified folder** (assuming they share the same structure); as you add new files, simply refresh the query and they will automatically append !

![1](https://github.com/anaswick/my_portfolio/assets/24541471/b13f67bd-4400-4ebf-b0db-f936c49e8728)

![2](https://github.com/anaswick/my_portfolio/assets/24541471/ddb1134e-ea6f-4d14-b4d1-1d3482142b93)

![4](https://github.com/anaswick/my_portfolio/assets/24541471/19168fbd-0a28-4aaf-bc2b-ba3024f86a0f)

If we create 3 data sources like Sales 2020,2021, and 2022 then append it into a single new query, you can't delete them after appending is done. The better way to do it is by connecting the data using the **PRO TIP** above.

