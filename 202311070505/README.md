# Two Sum

## Problem
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

## Solution
initialize a vector<int> called `result`.  
initialize a map<int,int> called `seen`, where the key is the number and value is the index of the element in the array.  
Add the first number to `seen`.  
Start iterating at the second number in `nums`.  
Store the iterator `it = seen.find(target-nums[i])`.  
if `it` is found in `seen`, then add `i` and `it->second` (the iterator's value) to `result` and return `result`.  
Add the current element to the map.  
return `result`.  

```c++
#include <iostream>
#include <vector>
using namespace std;

class Solution {
    public:
        vector<int> twoSum(vector<int>& nums, int target) {
            vector<int> result; // Declare result
            map<int, int> seen; // Declare seen
            seen.insert(pair<int, int>(nums[0], 0)); // Add first element to seen

            // Loop through nums
            for (int i = 1; i < nums.size(); i++) {
                // If target - nums[i] is in the map...
                map<int, int>::iterator it = seen.find(target-nums[i]);
                if (it != seen.cend()) {
                   result.push_back(i);
                   result.push_back(it->second);
                   return result;
                }
                seen[nums[i]]=i;
            }
            return result;
        }
};

```
The space complexity is a function of the vector `result` and map `seen`. Each has a space complexity of O(n), so the space complexity is O(2n) or just **O(n)**.  
The time complexity is a function of the For Loop. The time complexity of the loop itself is O(n) and the `seen.find()` function is O(log(n)). The other operations' time complexities are constant. Therefore the time complexity of the method as a whole is **O(nlog(n))**

## Tags

## References
[Geeks for Geeks - Vector in C++ STL](https://www.geeksforgeeks.org/vector-in-cpp-stl/)  
[Geeks for Geeks - Map in C++](https://www.geeksforgeeks.org/map-associative-containers-the-c-standard-template-library-stl/)  
