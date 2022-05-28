# Leetcode - Bubble Sort 

## Algorithm
```java
	static void bubbleSort(int[] input) {
       		for (int i = 0; i < SIZE; i++) {
            		for (int j = 0; j < SIZE - 1; j++) {
                		if (input[j] > input[j + 1]) {
                    			int tmp = input[j];
                    			input[j] = input[j + 1];
                    			input[j + 1] = tmp;
                		}
            		}
        	}
    	}
```
## Test Case

`input = [9, 10, 2, 7, 5, 2]`
i = 0:
	[9, 2, 7, 5, 2, 10]
i = 1:
	[2, 2, 7, 5, 9, 10]
i = 2:
	[2, 2, 5, 7, 9, 10]

## Explanation
Bubble sort goes through the array, starting from the beginning, and essentially switches the element of the array you are currently on with the next element.

Going through one full pass of the array however is not enough, as is indicated by the test case above. One full pass managed to push the *10* all the way to the tail, but *9* is now at the head. For this reason, multiple passes are needed to fully sort the array.

## Time and Space Complexity
Each pass has a time complexity of *n*, where *n* is the number of elements in the array. Bubble sort has a worst-case scenario time complexity of *n^2* because *n* is the maximum number of passes needed to sort the array. 

## References
[Big O Notation for Sorting Algorithms](https://www.educative.io/blog/big-o-notation-cheat-sheet)   

## Tags
#programming
