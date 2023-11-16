# Longest Repeating Character Replacement

## Problem
You are given a string `s` and an integer `k`. You can choose any character of the string and change it to any other uppercase English character. You can perform this operation at most `k` times.  

Return the length of the longest substring containing the same letter you can get after performing the above operations.  

Example 1:
Input: s = "ABAB", k = 2
Output: 4
Explanation: Replace the two 'A's with two 'B's or vice versa.

Example 2:
Input: s = "AABABBA", k = 1
Output: 4
Explanation: Replace the one 'A' in the middle with 'B' and form "AABBBBA".
The substring "BBBB" has the longest repeating letters, which is 4.
There may exists other ways to achieve this answer too.

Constraints:
1 <= s.length <= 105
s consists of only uppercase English letters.
0 <= k <= s.length

## Solution

```c++
#include <unordered_set>
#include <algorithm>

class Solution {
    public:
        int characterReplacement(string s, int k) {
            int longest = 0, l = 0, r = 0, notDuplicate = 0;
            char startingChar = s[0];
            
            while (r < s.size()) {
                if (s[r+1] != startingChar) notDuplicate++;
                r++;
                if (notDuplicate > k) {
                    longest = max(longest, r-l+1);
                    l++;
                    startingChar = s[l];
                    notDuplicate--;
                }
            }
        }
};
// Example
// ABAB, k=2
// End of 1st Iteration: startingChar=A, notDuplicate=1, l=0, r=1,
// End of 2nd Iteraton: startingChar=A, notDuplicate=1, l=0, r=2,
// End of 3rd iteration: startingChar=A, notDuplicate=2,l=0,r=3,
// End of 4th Iteration: 
```

## Tags
