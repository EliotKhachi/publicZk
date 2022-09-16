# Spring Beans Configuration

Spring *beans* are found in the the `resources` directory of Maven projects in order for our program to find it. It can be named anything but `dependency-configuration.xlm` is standard.  

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

## Prototype Scope
A bean with a prototype scop creates a new instance each time `getBean` is called. There's no shared state.
```xml
<bean class="learn.spaceflight.spacecraft.Probe" scope="prototype"/>
```

## References


## Tags
#spring
