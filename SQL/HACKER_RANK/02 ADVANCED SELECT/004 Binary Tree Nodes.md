# 004 Binary Tree Nodes

You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

![image](https://github.com/anaswick/my_portfolio/assets/24541471/9824c259-2178-4a15-bd4c-b908eef803d1)

Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.
Sample Input

![image](https://github.com/anaswick/my_portfolio/assets/24541471/bf0af35a-a957-4625-a918-6c2832c659f4)

Sample Output
```
1 Leaf
2 Inner
3 Leaf
5 Root
6 Leaf
8 Inner
9 Leaf
```

Explanation

The Binary Tree below illustrates the sample:

![image](https://github.com/anaswick/my_portfolio/assets/24541471/8f33d976-76c6-464d-90a1-fcde836ad13f)

# Solution
```
SELECT N, CASE WHEN P IS NULL THEN 'Root' 
WHEN(SELECT COUNT(*) FROM BST WHERE P = A.N) > 0 THEN 'Inner'
ELSE 'Leaf'
END
FROM BST A
ORDER BY N;
```
