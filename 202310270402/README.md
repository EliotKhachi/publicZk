# 4 Pillars or 9 Diagrams of SysML

```mermaid
classDiagram
    Animal <|-- Duck
    Animal <|-- Fish
    Animal <|-- Zebra
    Animal : +int age
    Animal : +String gender
    Animal: +isMammal()
    Animal: +mate()
    class Duck {
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


<details>

<summary>Tips for collapsed sections</summary>

### You can add a header

You can add text within a collapsed section. 

You can add an image or a code block, too.

```ruby
   puts "Hello World"
   ```

</details>


## Tags
#systems
