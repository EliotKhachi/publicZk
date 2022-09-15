# Spring Beans Configuration

Spring *beans* are found in the `dependency-configuration.xlm` file. This file must live in the `resources` directory of Maven projects in order for our program to find it.

## Bean
A \<bean\> element can be added inside \<beans\> in this .xml file to register an instance of a datatype, i.e. your objects, with the DI container.

```xml
<bean class="learn.spaceflight.personnel.Astronaut">
        <!-- 2. constructor-args represent values provided to the constructor. -->
        <constructor-arg value="Saraann"/>
        <constructor-arg value="Burd"/>
        <constructor-arg value="14
</bean>
```
## References


## Tags
#spring
