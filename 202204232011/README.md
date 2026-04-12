# Breadth First Search

## Key Points
*Breadth First Search (BFS)* is an algorithm for traversing an unweighted Graph or a Tree.

* BFS starts with the root node and explores each adjacent node before exploring node(s) at the next level.  

* BFS makes use of a Queue [\[Selecting a Data Structure\]](../202204020516) for storing the visited nodes of the graph / tree  


## Traversing Algorithm
1. Start with the root node, mark it as *visited* and push it into the Queue.  
2. Remove the node at the front of the Queue, add that node to the BFS traversal order, and push the nodes adjacent to the removed node that have not been visited, into the Queue.  
3. Repeat step 2 while the Queue is not empty.  

## Links
1. [\[Selecting a Data Structure\]](../202204020516)

## References
[Breadth First Search (BFS) Algorithm](https://algotree.org/algorithms/tree_graph_traversal/breadth_first_search/)
## Tags
#software
