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

## Questions and Answers
**1. Whats the difference between a `value` and `ref` \<constructory-arg\>?**   
The `value` attribute represents an explicit value, while the `ref` attribute passes a reference to the `id` of a registered bean.   

**2. Where is the Spring dependency added in pom.xml?** 
In  the `dependency` tag inside the `dependencies` tag. Tags used to define the dependency are `groupId`, `artifactId`, and `version`. 

```xml
<dependencies>
        <!-- dependency injection support -->
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-context</artifactId>
            <version>5.2.7.RELEASE</version>
	</dependency
</dependencies>
```

**3. How does Spring locate the XML configuration file?**  
The XML configuration file, no matter its name, should be located in `src/main/resources` directory in a Maven project.  

**4. What XML is used for constructor injection? What is used for setter injection?**   
Constructor injection is done with the `constructor-arg` tag and the `property` tag is used for setter injection.  

**5. What is the "prototype" `scope` in a `bean` definition?**  
A bean with a prototype scope creates a new instance each time `getBean` is called. There's no shared state.
```xml
<bean class="learn.spaceflight.spacecraft.Probe" scope="prototype"/>
```


## References
[Spring Official Site](https://spring.io/)

## Tags
#spring
