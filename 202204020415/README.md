# ArrayLists - Java

## Introduction
Arraylists are part of the **Java Collections Framework**. Like arrays, arraylists can hold large amounts of data of any single type. Arraylists can also change in size.

## Constructors
```java
	ArrayList<E> arraylist1 = new ArrayList<E>(); // initialize ArrayList of E objects with a default capacity
	ArrayList<E> arraylist2 = new ArrayList<E>(23); // initialize with an explicit capacity
	ArrayList<E> arraylist3 = new ArrayList<E>(arraylist1); // initialize based on another collection
```
## Methods
```java
	// ADDING ELEMENTS
	arraylist1.add(new E(param1, param2, ...); // add an E object to end of arraylist
	
	E test = new E(param1, param2, ...); // create an E object
	arraylist1.add(0, test); // and add it to ArrayList at index 0

	// REMOVING ELEMENTS
	arraylist1.remove(1); // removes element at index 1
	arraylist1.remove(param1); // can remove an element based on a value. 
	// note that the .remove() by value function loops through the arraylist elements and checks if the value ".equals()" each element. Therefore, by default, .equals() defaults to returning true only when the object passed into remove() references the same spot in memory as a given element in the arraylist. Instead, you may @Override the object's .equals() method to return true for a set of conditions you define, such as sharing the same String name; 
```

## Tags
#programming #java
