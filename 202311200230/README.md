# Minimum Window Substring

## Problem
Given two strings `s` and `t` of lengths `m` and `n` respectively, return the minimum window substring of `s` such that every character in `t` (including duplicates) is included in the window. If there is no such substring, return the empty string "".

The testcases will be generated such that the answer is unique.

**Example 1:**
Input: s = "ADOBECODEBANC", t = "ABC"
Output: "BANC"
Explanation: The minimum window substring "BANC" includes 'A', 'B', and 'C' from string t.

**Example 2:**
Input: s = "a", t = "a"
Output: "a"
Explanation: The entire string s is the minimum window.

**Example 3:**
Input: s = "a", t = "aa"
Output: ""
Explanation: Both 'a's from t must be included in the window.
Since the largest window of s only has one 'a', return empty string.

**Constraints:**
m == s.length
n == t.length
1 <= m, n <= 105
s and t consist of uppercase and lowercase English letters.

## Solution

*Incomplete*
```c++
#include <cctype>
#include <vector>

class Solution {
    public:
        string minWindow(string s, string t) {
            if (t.length() > s.length()) return "";

            // Initialize pointers
            int l = 0, r = 0;

            // Get count of t characters
            vector<int> tCharCount(52);
            for (int i = 0; i < t.length(); i++) {
                if (isupper(t[i])) tCharCount[t[i] - 'A']++;
                else tCharCount[t[i] - 'a' + 26]++;
            {

            vector<int> winCharCount(52);
            while (r < s.size()) {
                // Increment window char count
                if(isupper(s[r])) winCharCount[s[r] - 'A']++;
                else winCharCount[s[r] - 'A' + 26]++;
            }
        }
};
```


## Tags
