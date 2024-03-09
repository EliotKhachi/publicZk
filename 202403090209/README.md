# 9 Diagrams of SysML

## Behavior
1. **Activity Diagram**: Represents workflows or processes within a system.

*An activity diagram could represent the steps involved in processing an online order, including activities such as "select item," "add to cart," "enter shipping details," and "confirm order."*
```plantuml
@startuml

skinparam activity {
  BackgroundColor LightYellow
  }

  (*) --> "Select Item"
  "Select Item" --> "Add to Cart"
  "Add to Cart" --> "Enter Shipping Details"
  "Enter Shipping Details" --> "Confirm Order"
  "Confirm Order" --> (*)

  @enduml
  ```

2. **Sequence Diagram**: Illustrates the order of interactions between objects or components in a system.

*In a sequence diagram, you might illustrate the communication between a user and a server during a login process, showing the sequence of messages exchanged between the client and server.*

3. **State Machine Diagram**: Models the behavior of entities by defining their states and transitions.

*A state machine diagram could depict the various states and transitions of an elevator, including states such as "idle," "moving up," "moving down," and transitions triggered by events like "door open" or "button press."*

4. **Use Case Diagram**: Describes the interactions between actors and the system to achieve specific goals.

*For a social media platform, a use case diagram could show actors like "user," "admin," and "guest" interacting with the system through use cases such as "post status," "send message," and "manage profile."*

## Structure
5. **Block Definition Diagram**: Defines the structural aspects and properties of system elements.

*This diagram might outline the different components of a car, including blocks such as "engine," "chassis," "transmission," and their interconnections.*

6. **Internal Block Diagram**: Depicts the internal structure and connections among components within a system block.

*Within a smartphone, an internal block diagram could detail the internal components like "CPU," "battery," "display," and how they are interconnected.*

7. **Parametric Diagram**: Specifies constraints and relationships between parameters within the system model.

*In a parametric diagram, you could express the relationship between the weight of a bridge and the materials used, showing how changing material properties affect the overall weight.*

8. **Package Diagram**: Organizes and encapsulates related elements within a modular structure.

*For a software project, a package diagram could show the organization of classes and modules into packages like "UI," "database," and "business*

## Requirement
9. **Requirement Diagram**: States the functional or non-functional conditions that a system must satisfy.
*This diagram could outline specific system requirements such as "must support multi-platform access," "must handle 1000 concurrent users," and "must encrypt user data."*

## Tags
#sysml #systems
