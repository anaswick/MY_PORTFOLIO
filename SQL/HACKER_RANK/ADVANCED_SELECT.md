## Platform : Hacker Rank
## Difficulty : Advanced
## Skill Tested : SQL

Every SQL queries I wrote is MySQL queries

### Binary Tree Nodes
---
You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

![binary tree nodes](https://github.com/anaswick/my_portfolio/assets/24541471/99202076-115e-400d-82e0-df8c29e35e98)

Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.


Sample Input

![binary tree nodes input](https://github.com/anaswick/my_portfolio/assets/24541471/00248e1a-0aef-4bbb-978a-3c6ca715c179)

```
select N,
       if(P is null, 'Root', if((select count(*) from BST where P = B.N)> 0, 'Inner', 'Leaf')) 
from BST as B 
order by N;
```
