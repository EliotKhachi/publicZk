# Interfaces - Java
## What is an Interface?
Interfaces define a contract without implementation.  
```java
	public interface Vehicle {
	
		void accelerate();
	}
```
An interface can be thought of as a rigid outline, or, a *contract*, for a type of class. Classes that *implement* an interface *must* use the methods defined in the interface.  
```java
	public class Truck implements Vehicle {
		private static final int MAX_KM_PER_HOUR = 195;
		private int kilometersPerHour = 0;
		
		@Override
		public void accelerate() {
			kilometersPerHour = Math.min(kilometersPerHour + 10, MAX_KM_PER_HOUR);
		}
	}
```
## When To Use An Interface
**Rule #1**  
* Use an interface when you can solve a problem in two or more ways  
**Rule #2**  
* Use an interface even when there's one solution to a problem but in the future they may arise different implementations.  
**Rule #3**  
* Use an interface to control testing

## Examples & Questions
1. Training
	1. Lifting Weights
	2. Calisthenics
	3. Practicing sport
2. Learn
	1. Reading
	2. Taking a class
	3. Watching a video
	4. Taking notes

* **What problems to interfaces solve that aren't solved by methods, classes, or inheritance?** They establish a structure to related objects by *requiring* classes that implement it to include its methods. Interfaces are cleaner than parent classes; if there's no code reuse, there is no point of overriding the parent class; instead, use an interface.

1. Interface - Pet
	1. feed();
	2. sleep();
	3. age;
	4. interact();

## Tags
#programming #java
