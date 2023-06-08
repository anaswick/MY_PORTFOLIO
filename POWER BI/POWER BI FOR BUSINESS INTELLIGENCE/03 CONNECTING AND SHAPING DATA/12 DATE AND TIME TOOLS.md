# DATE AND TIME TOOLS

![1](https://github.com/anaswick/my_portfolio/assets/24541471/34ffc49e-6b67-4175-bb13-e1fb71c9b75c)

![2](https://github.com/anaswick/my_portfolio/assets/24541471/85070da7-c37e-4efe-8f1b-f55bfb7806d7)

**Date and time** tools are relatively straight-forward, and include the following options:
- **Age** : difference between the current date and the date in each row
- **Date only** : removes the time component from a date/time field
- **Year/month/quarter/week/day** : extract individual components from a date field (time-specific options include Hour, Minutes, Seconds, etc)
- **Earliest/Lates** : evaluates the earliest or latest date from a column as a single value (can only be accessed from the "Transform" menu)

**Note** : you will almost always want to perform these operations from the "*Add column*" menu to build out new fields, rather than transforming an individual date/time column.

**PRO TIP** : Load up a table containing a **single date column** and use Date tools to build out an **entire calendar table**

## TUTORIAL

1. Load .csv files called **AdventureWorks Calendar Lookup.csv**
2. Rename the query into **Calendar Lookup**
3. Lets try with **earliest and latest**, follow these steps

![3](https://github.com/anaswick/my_portfolio/assets/24541471/b1576be5-6bd9-44fc-a6b7-1481dbbca1b9)

![4](https://github.com/anaswick/my_portfolio/assets/24541471/5f3d0582-0078-44b6-ba26-45015311e3e4)

5. Lets make a new field **Day Name**, follow these steps

![5](https://github.com/anaswick/my_portfolio/assets/24541471/cfb3d8b4-9c3b-4dda-a18d-e8191ce92939)

![6](https://github.com/anaswick/my_portfolio/assets/24541471/57e0c25b-45e9-4a9e-a04c-9c8de3cc8c1a)

6. Lets make a new field **Start of week**, follow these steps

![7](https://github.com/anaswick/my_portfolio/assets/24541471/53675957-ed1b-4664-be00-e42ddeb25c4a)

![8](https://github.com/anaswick/my_portfolio/assets/24541471/9c271cca-f475-4133-86c5-1daa7c7903c8)

The default setting of this tools is week started on **Sunday** you can change it to **Monday** using these steps

![9](https://github.com/anaswick/my_portfolio/assets/24541471/e1ef4105-87bb-4cd1-814c-e0522ddcb41e)

![10](https://github.com/anaswick/my_portfolio/assets/24541471/9549021d-b978-4be5-b687-3d8e1fb6cd77)

or you can use it to become more readable


Now the first day of the week is **Monday**

![11](https://github.com/anaswick/my_portfolio/assets/24541471/1a79b57a-6432-4904-a94a-e66c2aa857e8)


