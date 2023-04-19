# Using Gradle to Build Java Apps

## What is Gradle
Gradle is a build tool used to build Java applications.
[Why Do We Need Build Tools](../202304191953)

## gradle init creates...
* build.gradle - Written in Groovy.  gradle file that defines the configuration for the project (plugins, repositories, dependencies). Equivalent to the `pom.xml` in Maven.  
* gradlew - Stands for "gradle wrapper". Mac/Linux shell script used to execute gradle commands, i.e. `gradlew build` inside your project directory.  
* gradlew.bat - Same as gradlew except for Windows OS.  
* settings.gradle - Written in Groovy.  specifies project name and other high level configuration.  
* .gitignore files
     * .gradle - Gradle project-specific cache directory  
     * build - Gradle build output directory  

## build.gradle deeper dive
* Project
    * **build.gradle**
        * plugins - Defining plugins adds tasks to build scripts. I.e. adding the 'java' plugin adds the `build` task because you can now build your project (if you have a .java file).  
        * tasks

## What is Groovy
A dynamically typed, scripting language that runs on the JVM. Gradle uses Groovy for its build scripts to call Gradle's APIs with the Gradle Groovy DSL (domain specific language).  
Examples:
```
    def myVar = 'Executing as a script'
    println myVar

    def multiply(first, second) {
        println first * second
    }
    multiply 2, 3

    def myClosure = {
        println 'Executing closure'
    }
    myClosure()
```


## Tags
#java
