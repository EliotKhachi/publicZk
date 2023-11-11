# Longest Consecutive Sequence

## Problem
Given an unsorted array of integers `nums`, return the length of the longest consecutive elements sequence.

You must write an algorithm that runs in O(n) time.

Example 1:

Input: nums = [100,4,200,1,3,2]
Output: 4
Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.

Example 2:

Input: nums = [0,3,7,2,5,8,4,6,0,1]
Output: 9


Constraints:

0 <= nums.length <= 105
-109 <= nums[i] <= 109

## Solution
1. Initialize an unordered set with the values of `nums`
2. Initialize `longest` to 0.
3. Iterate over each value, `n`, in the set  
    4. For each value, check if `n-1` does not exist in the set. If that is true, then this is the start of a subsequence of at least length 1:  
    5. Increment `length` while `n+length` exists. 
    6. Rewrite `longest` to `max(length,longest)` for every potential subsequence.   
7. return `longest`;
```c++
#include<algorithm>
#include<unordered_set> 

class Solution {
    public:
        int longestConsecutive(vector<int>& nums) {
            unordered_set<int> s(nums.begin(), nums.end());                        
            int longest = 0;
            for (int n : s) {
                if (!s.count(n-1)) {
                    int length = 1;
                    while(s.count(n+length)) {
                        length++;
                    }
                    longest = max(length, longest);
                }
            }
            return longest;
        }
};
```

## References
[GeeksForGeeks - Vectors in C++](https://www.geeksforgeeks.org/vector-in-cpp-stl/)  
[GeeksForGeeks - Unordered Set in C++](https://www.geeksforgeeks.org/unordered_set-in-cpp-stl/)  

## Tags
