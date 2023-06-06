# ASSIGNENT : TABLE TRANSFORMATION

## KEY OBJECTIVES
1. Create queries to connect to the two new .csv files
2. Name your queries **Product Category Lookup** and **Product Subcategory Lookup**
3. Confirm that column headers have been promoted and that all data types are correct
4. Add a new column to extract all characters before the dash ("-") in the **Product SKU** column, and name it **SKU Type**
5. Update the **SKU Type** calculation above to return all characters before second dash, instead of the first
6. Replace zeros (0) in the **Product Style** column with **NA**
7. Close and load to your data model

## SOLUTIONS

1. insert two .csv files

2. renaming your table name / queries

![2 renaming table name](https://github.com/anaswick/my_portfolio/assets/24541471/5018cf51-1b03-488f-995d-d74df40d0ad2)

3. Column headers and data types confirmation

![3 header 1](https://github.com/anaswick/my_portfolio/assets/24541471/719e1e94-568f-49e7-bcfb-8cc42e22fc45)

![3 header 2](https://github.com/anaswick/my_portfolio/assets/24541471/6d6cc848-aba2-4f93-bcbe-5f7f06370deb)

4. Add new column SKU Type by extracting from existing column Product SKU

![4 sku type](https://github.com/anaswick/my_portfolio/assets/24541471/2848b589-be63-4da6-87a6-fb675b278f43)

type "-" and don't forget to rename the new colum with **SKU Type**

5. Update the **SKU Type**

![5 step 1](https://github.com/anaswick/my_portfolio/assets/24541471/b88a9939-afaa-48ee-8365-554a1017bfe6)

![5 step 2](https://github.com/anaswick/my_portfolio/assets/24541471/b4fa4f8d-4456-48db-8395-8fd100d00c64)

![5 step 3](https://github.com/anaswick/my_portfolio/assets/24541471/76eae31f-8698-42bb-bb0a-51b3fdfb150d)

6. Update zeros in **Product Style** with **NA**

![6 step](https://github.com/anaswick/my_portfolio/assets/24541471/41f814c3-d4a1-43d3-b600-2a68af9a7950)


**Final Result**

![7 voila](https://github.com/anaswick/my_portfolio/assets/24541471/3a6bf16d-b5d3-49d1-b83e-1c0ccf55a2cd)


