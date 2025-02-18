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
Let's call the operation of choosing any character and changing it to any other uppercase English character the "character match operation", or CMO for short. 

Imagine a sliding window traversing over the string `s`. The window starts at index 0 and keeps expanding to the right while the number of CMOs required does not exceed the allowable `k`. Otherwise, if the # of required CMOs does exceed `k`, then contract the window from the left. 

**Edge Cases:**
* if `k` is the same as the length of the string `s`, then simply return `k`.  

```c++
#include <algorithm>
class Solution {

    public:
        int characterReplacement(string s, int k) {
            if (k == s.length()) return k;

            int maxCount = 0, l = 0, r = 0, result = 0;
            vector<int> count(26);

            while (r < s.size()) {
                count[s[r] - 'A']++;
                maxCount = max(maxCount, count[s[r]-'A']);
                if (r - l + 1 - maxCount > k) {
                count[s[l] - 'A']--;
                l++;
                }
                result = max(result, r - l +1);
                r++;
            }
            return result;
        }
};

```

## References
[Leetcode Problems - Longest Repeating Character Replacement](https://leetcode.com/problems/longest-repeating-character-replacement/)  

## Tags
