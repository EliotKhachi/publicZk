# Valid Palindrome

## Problem
A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string `s`, return `true` if it is a ** *palindrome** *, or `false` *otherwise*.

## Solution
**Option 1:**
Remove all non-alphanumeric characters and convert everything to the same case, lower or upper.  
Iterate over the string, say with `i`, up to the midway point.  
    Compare the characters at index `i` and index `length - 1 - i`.  
    If they're not equal, return false
return true
**Option 2:**
Initialize a left and right pointer.  
Iterate while left is less than right.  
    while s[l] is non-alphanumeric, increment l  
    while s[r] is non-alphanumeric, decrement r  
    Compare characters at index `l` and `r`. If they're not equal return false.  
return true.  

```c++
#include<string>

class Solution {
    public:
        bool isPalindrome(string s) {
            int l = 0;
            int r = s.length()-1;
            while (l < r) {
                while (!isalnum(s[l]) && l < r) l++;
                while (!isalnum(s[r]) && l < r) r--;
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
[GeeksForGeeks - isalnum() in C++](https://www.geeksforgeeks.org/isalnum-function-c-language/)  


## Tags
