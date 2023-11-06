# Contains Duplicate

## Problem
Given an integer array `nums`, return `true` if any value appears at least twice in the array, and return `false` if every element is distinct.

Constraints:  
1 <= nums.length <= 10^5  
-10^9 <= nums[i] <= 10^9  

## Solution
Initialize a set `seen`.  
For every element in `nums`, if it doesn't exist in `seen`, then add it; otherwise, return `true`. After looping through the entire array, return `false`. 

```c++
class Solution {
public:
    bool containsDuplicate(vector<int>& nums) {
        set<int> seen; // Declare set

        // Loop through array
        for (int element : nums) {
            // If we haven't seen the element yet...
            if (seen.find(element) == seen.end()) { // seen.find(element) returns an iterator pointing to the element in the set. If the element doesn't exist in the set, tthen the iterator points to the position after the last element in the set.   
                seen.insert(element);
            }
            // If we have seen the element...
            else {
               return true; 
            }
        }
        return false;
    }
};
```
The space complexity is solely determined by the `seen` set since that is the only occurence of sustained memory allocation in this solution. In the worst-case, the set can contain 10^5 numbers since that is the given constraint of our `nums` array. This simplifies to a constant space complexity of **O(1)**.  
The time complexity is a function of the for loop and method calls within the loop:  
* `for (int element : nums)` - O(n), where n is the size of the array.  
* `seen.find(element)` - O(log(n)), where n is the size of the set. Sets in C++ are stored as a binary search tree, and therefore searching the tree has a worst-case time-complexity of log(n).  
* `seen.end()` - O(1)  
* `seen.insert` - O(log(n)), where n is the size of the set.  
This gives us a worst-case time complexity of **O(n\*log(n)\*log(n))**

## References
[Leetcode Problems - Contains Duplicate](https://leetcode.com/problems/contains-duplicate/)  
[Geeks For Geeks - Introduction to Set Data Structure](https://www.geeksforgeeks.org/introduction-to-set-data-structure-and-algorithm-tutorials/)

## Tags
