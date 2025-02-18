# Longest Substring Without Repeating Characters

## Problem
Given a string `s`, find the length of the longest substring without repeating characters.  

Example 1:  
Input: s = "abcabcbb"  
Output: 3  
Explanation: The answer is "abc", with the length of 3.  

Example 2:  
Input: s = "bbbbb"  
Output: 1  
Explanation: The answer is "b", with the length of 1.  

Example 3:  
Input: s = "pwwkew"  
Output: 3  
Explanation: The answer is "wke", with the length of 3.  
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.  

Constraints:  
0 <= s.length <= 5 * 104  
s consists of English letters, digits, symbols and spaces.  

## Solution
* Initialize a left and right pointer `l` and `r`.  
* Initialize `longest`.  
* While r < `s.length()`
    * Initialize an unordered set `seen` .  
    * while (!seen.count(s[r+1])
        * r++
    * longest = max(longest, r-l)
    * l = r+1
    * r = l



```c++
#include <unordered_set>
#include <algorithm>

class Solution {
    public:
        int lengthOfLongestSubstring(string s) {
            int l = 0, r = 0, longest = 0;
            unordered_set<char> seen;

            while (r < s.length()) {
                if (!seen.count(s[r])) {
                    seen.insert(s[r]);
                    r++;
                }
                else {
                    seen.erase(s[l]);
                    l++;
                }
                longest = max(longest, r-l);
            }
            return longest;
        }
};
// Example

Input s = "abcabcbb"
longest = 0
r=0,l=0,seen=[a]
    seen = [a,b], r=1
    seen = [a,b,c], r=2
    longest = 3
    l = 3
    r = 3
    seen = []
r=3,l=3,seen=[a]
    seen = [a,b],r=4
    seen = [a,b,c],r=5
    longest = 3
    l=6
    r=6
    seen= []
r=6,l=6,seen=[b]
    longest = 3
    l=7
    r=7
    seen=[]
r=7,l=7,seen=[b]
```

## References
[Leetcode Problems - Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters/)  
[GeeksForGeeks - Unordered Set in C++](https://www.geeksforgeeks.org/unordered_set-in-cpp-stl/)  

## Tags
