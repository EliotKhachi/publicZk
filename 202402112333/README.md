# Maven Transitive Dependencies

*Transitive* dependencies are essentially dependencies for our [direct dependencies](../202402112332). Maven automatically includes these in our project.  

We can list all dependencies (including transitive ones) by using the `mvn dependency:tree` command at the root of our project. You can also use `jar tf <project.jar>` to view the contents of the jar file.   

## References
[Apache.org - (Maven) Introduction to Dependency Mechanism](https://maven.apache.org/guides/introduction/introduction-to-dependency-mechanism.html)

## Tags
#java
