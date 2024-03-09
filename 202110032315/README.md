# What is SysML? 

* SysML stands for Systems Modeling Language.  
* It's a graphical modeling language that supports systems engineering.  
* It defines the kinds of elements you're allowed to put in your model and the allowable relationships between them.  
* It is an *enabler* of [Model-Based Systems Engineering](../202110052023)
* It closes the communications gap between systems and software engineers.  
* [4 Pillars of SysML](../202310270518)  
* [9 Diagrams of SysML](../202403090209)  

## Example
![image](https://www.eliotkhachi.dev/resources/zettel-images/Sun_Dec_10_11:47:55_AM_PST_2023.png)

```mermaid
---
title: Animal example
---
classDiagram
note "From Duck till Zebra"
Animal <|-- Duck
note for Duck "can fly\ncan swim\ncan dive\ncan help in debugging"
Animal <|-- Fish
Animal <|-- Zebra
Animal : +int age
Animal : +String gender
Animal: +isMammal()
Animal: +mate()
class Duck{
+String beakColor
+swim()
+quack()
}
class Fish{
-int sizeInFeet
-canEat()
}
class Zebra{
+bool is_wild
+run()
}
```

## References
*SysML Distilled* by Lenny Delligatti

## Tags
#systems #MBSE
