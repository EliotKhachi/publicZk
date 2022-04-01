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

## Tags
#software #java
