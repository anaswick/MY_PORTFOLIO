# CONNECTING MULTIPLE FACT TABLES
___


![1](https://github.com/anaswick/my_portfolio/assets/24541471/8be2789d-f0dd-48b3-8265-16b7053ac583)

This model contains two fact tables : **Sales Data** and **Returns Data**
- since there is no primary/foreign key relationship, we can't connect them directly to each other
- but we can connect each fact table to related lookups, which allows us to filter both sales and return data **using fields from any shared lookup tables**
- we can view orders and retursn by product since both tables relate to Product Lookup, but we can't view returns by customer since no relationship exists. (and no column about customer in Returns Data)

**HEY THIS IS IMPORTANT!**

Generally speaking, fact tables should **connect through shared dimension tables, not directly to each other**

![2](https://github.com/anaswick/my_portfolio/assets/24541471/dd01b7b2-9991-419f-9fea-cdb12af35772)

Let's check if our model has the right relationship now

![3](https://github.com/anaswick/my_portfolio/assets/24541471/5a4e4ab3-b31a-4bb4-b42a-45b3b646c89a)

