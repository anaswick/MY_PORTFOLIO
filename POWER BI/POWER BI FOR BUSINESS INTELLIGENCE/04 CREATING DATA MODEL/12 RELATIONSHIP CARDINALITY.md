# RELATIONSHIP CARDINALITY

**Cardinality** refers to the uniqueness of values in a column
- ideally, all relationships in the data model should follow a **one-to-many** cardinality; **one** instance of each primary key, and **many** instances of each foreign key.

![1](https://github.com/anaswick/my_portfolio/assets/24541471/c421611c-40f8-47a6-9ba6-604aac310458)

In this example there is only **ONE instance of each Product Key** in the Product table (notes by a "1"), since each row contains **attributes of a single product** (name, SKU, description, price, etc)

There are **MANY instances of each Product Key** in the Sales table (noted by an asterisk *), since there are **multiple sales for each product**.

## EXAMPLE : ONE TO ONE CARDINALITY

![2](https://github.com/anaswick/my_portfolio/assets/24541471/e0992324-36c4-4f95-89c1-a19b3ab32936)

- connecting the two tables above using **product_id** creates a **one-to-one relationship,** since each product ID only appears once in each table
- this isn't necessarily a "bad" relationship, but you can simplify the model by merging the tables into a single, valid dimension table.

![3](https://github.com/anaswick/my_portfolio/assets/24541471/de48b0ab-bd2f-454e-be79-23f0554a1673)

## EXAMPLE : MANY TO MANY CARDINALITY

![4](https://github.com/anaswick/my_portfolio/assets/24541471/9668318e-4aac-496c-b91f-f570091f7e52)

- if we try to connect the tables above using **product_id** we'll get a **many to many relationship** warning since there are multiple instances of product_id in both tables
- Even if we force this relationship, how would we know which product was actually sold on each date - **cream soda** or **diet cream soda** ?


