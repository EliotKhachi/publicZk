# Product of Array Except Self

## Problem
Given an integer array `nums`, return an array `answer` such that `answer[i]` is equal to the product of all the elements of `nums` except `nums[i]`.

The product of any prefix or suffix of `nums` is guaranteed to fit in a 32-bit integer.

You must write an algorithm that runs in O(n) time and without using the division operation.

Example 1:

Input: nums = [1,2,3,4]
Output: [24,12,8,6]

Example 2:

Input: nums = [-1,1,0,-3,3]
Output: [0,0,9,0,0]

Constraints:
2 <= nums.length <= 105
-30 <= nums[i] <= 30
The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

Follow up: Can you solve the problem in O(1) extra space complexity? (The output array does not count as extra space for space complexity analysis.)

## Solution
1. Declare vector `answer` with 1s  
2. Iterate over nums from left to right and multiply `answer[i]` by `nums[0]*nums[1]*...*nums[i-1]`  
2. Iterate over nums from right to left and multiply `answer[i]` by `nums[n]*nums[n-1]*...*nums[i+1]`  
3. Return `answer`  

```c++
#include <vector>
using namespace std;

class Solution {
    public:
        vector<int> productExceptSelf(vector<int> nums) {
            int n = nums.size();
            vector<int> answer(n, 1);
            int prefix = 1;
            for (int i = 0; i < n; i++) {
                answer[i]*=prefix;
                prefix*=nums[i];
            }
            int postfix = 1;
            for (int i = n-1; i >= 0; i--) {
                answer[i]*=postfix;
                postfix*=nums[i];
            }
            return answer;
        }
};
// Example
// nums = [1,2,3,4]
// answer = [1,1,1,1]
// prefix loop
// i=0: 1,1,1,1 | prefix = 1
// i=1: 1,1,1,1 | prefix = 2
// i=2; 1,1,2,1 | prefix = 6
// i=3; 1,1,2,6 | prefix = 24
// postfix loop
// i=0: 1,1,2,6 | postfix = 4
// i=1: 1,1,8,6 | postfix = 12
// i=2: 1,12,8,6| postfix = 24
// i=3: 24,12,8,6| postfix = 24
```

## References
[Leetcode Problems - Product of Array Except Self](https://leetcode.com/problems/product-of-array-except-self/)  
[GeeksForGeeks - Vectors in C++](https://www.geeksforgeeks.org/vector-in-cpp-stl/)  

## Tags
