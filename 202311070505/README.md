# Two Sum (Easy)

## Problem
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

## Solution
initialize vector<int> of size two
Iterator i goes from 0 <= i < nums.length().  
Iterator j goes from i+1 <= j < nums.length().  
if nums[i] + nums[j] = target, then return i,j

```c++
#include <iostream>
#include <vector>

class Solution {
    vector<int> twoSum(vector<int>& nums, int target) {
        
    }
};

```

## Tags
