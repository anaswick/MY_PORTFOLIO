# FILTER CONTEXT AND FLOW
___

![1](https://github.com/anaswick/my_portfolio/assets/24541471/94ca08c0-0531-40db-8c6b-da9727e190b2)

Here we have two data tables (**Sales Data** and **Returns Data**), connected to **Territory Lookup**.

The arrows show the **filter direction**, and point from the one (1) side of the relationship to the many (*) side.
- when you filter a table, that **filter context** is passed to any related "downstream" tables, following the arrow's direction

**PRO TIP** : Arrange lookup tables above fact tables in your model as a visual reminder that **filters always flow downstream**.

![2](https://github.com/anaswick/my_portfolio/assets/24541471/2a963856-b7c3-4ba7-a218-17677931fb5d)

Let's try it on Power BI

1. We use **Sales Territory Key** from **Territory Lookup** as filter, here is the result. This one is right

![3](https://github.com/anaswick/my_portfolio/assets/24541471/20eb4c34-fd64-44aa-883c-dd2f8a86dad1)

2. We use **Territory Key** from **Sales Data** as filter, this one is wrong.

![4](https://github.com/anaswick/my_portfolio/assets/24541471/106fff91-2ea4-4c39-acbe-2c129d7bf3c1)

3. We use **Territory Key** from **Returns Data** as filter, this one is also wrong.

![5](https://github.com/anaswick/my_portfolio/assets/24541471/28635989-7723-4e13-8d12-6729119efee5)

