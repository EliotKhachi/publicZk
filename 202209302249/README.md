# Automatic Assembly Feature

The larger the assembly and the more the components, the more difficult and tedious is to create an assembly sequence and procedure, as well as identify any tools and *special/custom tools* required.  

The purpose of this feature is to automate this process given a design/assembly in CAD. You can conceptualize each component as a node in a graph, and if you can traverse the entire graph, then that is one potential assembly sequence.

The criteria for being able to traverse from one node to another is:  
1. The new component must be able to mate to its neighboring components, as defined in the completed assembly, without moving through any other component in space.  

2. 
## Questions
What does it mean to have a cycle in this graph?

## Tags
#cad
