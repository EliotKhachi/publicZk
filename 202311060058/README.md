# Contains Duplicate

## Problem
Given an integer array `nums`, return `true` if any value appears at least twice in the array, and return `false` if every element is distinct.

## Solution
Initialize a set `seen`.  
For every element in `nums`, add it to `seen` if it does not yet exist in `seen`; otherwise, return `true`. If we haven't returned `true` after looping through the entire array, then return `false`. 

This works because when we traverse `nums` and encounter a number that we have already *seen*, that means we encountered it again; i.e. there is a duplicate and therefore we should return `true`. If we never encountered a duplicate, then we return `false` since every element is distinct.  

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

## References
[Leetcode Problems - Contains Duplicate](https://leetcode.com/problems/contains-duplicate/)
[Geeks For Geeks - Introduction to Set Data Structure](https://www.geeksforgeeks.org/introduction-to-set-data-structure-and-algorithm-tutorials/)


## Tags
