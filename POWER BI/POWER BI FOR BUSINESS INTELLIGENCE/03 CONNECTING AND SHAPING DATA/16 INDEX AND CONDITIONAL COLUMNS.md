# INDEX AND CONDITIONAL COLUMNS
___

**Index columns** contain a list of sequential values that can be used to identify each unique row in a table (typically starting from 0 or 1)
There are often used to create **unique IDs** that can be used to form relationships between tables.

![1](https://github.com/anaswick/my_portfolio/assets/24541471/4f172254-bae2-4a37-a653-a14cfec66fe4)

**Conditional columns** allow you to define new fields based on logical rules and conditions (IF/THEN statements)

Here we're creating a conditional column named **Quantity Type** which is based on **Order Quantity**
- if order quantity = 1, then quantity type = **Single item**
- Else if order quantity > 1, then quantity type = **Multiple items**
- Else, quantity type = **Other**

![2](https://github.com/anaswick/my_portfolio/assets/24541471/11d0c601-f80d-45b0-ae7b-3bf8480b79b6)

![3](https://github.com/anaswick/my_portfolio/assets/24541471/4df4a790-2934-46f2-ab21-a21febb86b1d)



