# Valid Palindrome

## Problem
A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string `s`, return `true` if it is a ** *palindrome** *, or `false` *otherwise*.

## Solution
Clean the string to only include alphanumerics.   
Iterate over the string, say with `i`, up to the midway point.  
    Compare the characters at index `i` and index `length - 1 - i`.  
    If they're not equal, return false
return true

```c++
#include<string>

class Solution {
    public:
        bool isPalindrome(string s) {
            int l = 0;
            int r = s.length()-1;
            while (l < r) {
                while (!isalnum(s[l])) l++;
                while (!isalnum(s[r])) r--;
                if (tolower(s[l]) != tolower(s[r])) {
                    return false;
                }
                l++;
                r--;
            }
            return true;
        }
};
```

## References
[Leetcode Problems - Valid Palindrome](https://leetcode.com/problems/valid-palindrome/)  
[GeeksForGeeks - String in C++](https://www.geeksforgeeks.org/strings-in-cpp/)  

## Tags
