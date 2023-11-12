# 3Sum

## Problem
Given an integer array `nums`, return all the triplets `[nums[i], nums[j], nums[k]]` such that `i != j`, `i != k`, and `j != k`, and `nums[i] + nums[j] + nums[k] == 0`.

Notice that the solution set must not contain duplicate triplets.

Example 1:

Input: nums = [-1,0,1,2,-1,-4]
Output: [[-1,-1,2],[-1,0,1]]
Explanation: 
nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
The distinct triplets are [-1,0,1] and [-1,-1,2].
Notice that the order of the output and the order of the triplets does not matter.

Example 2:

Input: nums = [0,1,1]
Output: []
Explanation: The only possible triplet does not sum up to 0.

Example 3:

Input: nums = [0,0,0]
Output: [[0,0,0]]
Explanation: The only possible triplet sums up to 0.

Constraints:
3 <= nums.length <= 3000
-105 <= nums[i] <= 105

## Solution
Declare 2d `result` vector.  
Sort the input vector in increasing order.  
Loop over the input vector.  
    For each element at `i`, set a left and right pointer `l` and `r` for the rest of the array.  
        while l < r
            Evaluate the sum.
            If the sum is less than 0,
                increment the left pointer.
            Else if the sum is greater than 0,
                decrement the right pointer.  
            Else
                add the triplet to the `result` vector.  
                keep incrementing the left pointer and decrementing the right pointer until we pass any duplicates
    
```c++
class Solution {
    public:
        vector<vector<int>> threeSum(vector<int> nums) {
            vector<vector<int>> result;            

            int n = nums.size();
            sort(nums.begin(), nums.end()); // Sort nums in ascending order

            for (int i = 0; i < n - 1; i++) {
                if (i > 0 && nums[i] == nums[i-1]) continue; // Skip duplicates
                int l = i + 1;
                int r = n - 1;

                while (l < r) {
                    int sum = nums[i] + nums[l] + nums[r];
                    if (sum < 0) {
                        l++;
                    } else if (sum > 0) {
                        r--;
                    } else {
                        result.push_back({nums[i], nums[l], nums[r]});

                        // Skip duplicates
                        while (l < r && nums[l] == nums[l+1]) l++;
                        while (l < r && nums[r] == nums[r-1]) r--;
                        l++;
                        r--;
                    }
                }
            }
            return result;
        }
};
// Example:
// [-1,0,1,2,-1,-4]
// [-4,-1,-1,0,1,2]

// i=0,l=1,r=5: sum = -3
// i=0,l=2,r=5: sum = -3
// i=0,l=3,r=5: sum = -2
// i=0,l=4,r=5: sum = -1
// i=0,l=5,r=5: exit while loop
// i=1,l=2,r=5: sum = 0; add triplet [-1,-1,2];
// i=1,l=3,r=4; sum = 0; add triple [-1,0,1];
// i=1,l=4,r=5; exit while loop
// i=2,l=3,r=5; skip duplicate 
// i=3,l=4,r=5; sum = 3
// i=3,l=4,r=4; exit while loop
// i=4,l=5,r=5; never enter while loop
// i=5 l=6,r=5; never enter while loop
// i=6; exit for loop
// return result

// Expected: [[-1,-1,2],[-1,0,1]
```

## References
[Leetcode Problems - 3Sum](https://leetcode.com/problems/3sum/)

## Tags
