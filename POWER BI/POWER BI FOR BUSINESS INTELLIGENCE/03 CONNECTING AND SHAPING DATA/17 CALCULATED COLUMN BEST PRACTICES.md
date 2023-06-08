# CALCULATED COLUMN BEST PRACTICES

As a best practice, table transformations and column calculations should ideally happen **as close to the original data source as possible**, to optimize performance and speed.

![4](https://github.com/anaswick/my_portfolio/assets/24541471/d088dfb2-24e5-4e76-aaf1-c7855737f567)

**IMPORTANT : this is not a strict rule or requirement** but can significantly impact performance for very large or complex data models. Where you define calculations often depends on several factors (accessibility, complexity, business requirements, etc), so we will practice creating columns using Power Query and the Power BI front-end (DAX) throughout this course.

