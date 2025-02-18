# Valid Anagram

## Problem
Given two strings `s` and `t`, return `true` if `t` is an anagram of `s`, and `false` otherwise.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

## Solution
Return `false` if `s` and `t` are different lengths.  
Initialize a map `characterOccurences` with `char`-`int` key-value pairs.  
Loop over `s` and increment the count of each character found.  
Loop over `t` and decrement the count of each character found. If at any point, the count of a character is negative, then return `false`.  
Return `true` otherwise.  

```c++
#include <iostream>
#include <string>

class Solution {
    public:
        bool isAnagram(string s, string t) {
            if (s.length() != t.length()) return false;
            map<char, int> characterOccurences; // Declare map
            // Loop over string s
            for (char c : s) {
                // Increment
                characterOccurences[c]++; 
            }
            // Loop over string t
            for (char c: t) {
                // Decrement and check if it's negative
                if (--characterOccurences[c] < 0) {
                   return false; 
                }
            }
            return true;
        }
};
```
The space complexity is determined by the map `characterOccurences` since that is the only data structure we are allocating memory for in this solution. At the worst case, the map would hold 52 entries. Since this is a constant number, the space complexity simplifies to **O(1)**.  
The time complexity is the sum of the time complexities of each loop. This simplifies to **O(n)**, where n is the length of the string `s` and `t`.  

## References
[LeetCode Problems - Valid Anagram](https://leetcode.com/problems/valid-anagram/)  
[GeekForGeeks - Maps in C++](https://www.geeksforgeeks.org/map-associative-containers-the-c-standard-template-library-stl/)

## Tags
