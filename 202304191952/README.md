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

## Summary
apply java plugin --> compile java code with `build` task --> configured `jar` task --> added dependency `junit` for tests --> ran test

## References
[Gradle Tutorial Github Repo](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqazFJUUFoRkF6SDhydTJTQ0E4WFRlMlVxMFE0UXxBQ3Jtc0tuMzZkS1E2eHNwTGNaYldJbl9fV3V0eXJxbjZ4cmhpQ3BQbDVwTnZLbnM5akVIcFRtaHZWUHpINWJudGF3a2xUTlNMc2RiUEtUbWhXb0o3bEhwWlFHcy1VaVhqa0t5YU1fUDFIbFItdHpCQTNQOFJ6MA&q=https%3A%2F%2Fgithub.com%2Ftkgregory%2Fgradle-tutorial&v=-dtcEMLNmn0)
[Gradle Tutorial YouTube Video](https://www.youtube.com/watch?v=-dtcEMLNmn0)

## Tags
#java
