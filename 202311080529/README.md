# Group Anagrams

## Problem
Given an array of strings strs, group the anagrams together. You can return the answer in any order.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

## Solution


```c++
#include <string>
#include <map>
#include <vector>

class Solution {
    public:
        vector<vector<string>> groupAnagrams(vector<string>& strs) {
            vector<vector<string>> result; // declare <vector<vector<string> `result`
            map<string, vector<string>> keysToAnagrams;

            // Iterate over strs
            for (int i = 0; i < strs.size(); i++) {
                string anagramKey = getKey(strs[i]); // Create a string `anagramKey` for each str
                keysToAnagrams[anagramKey].push_back(strs[i]); // Add the string to a map `keysToAnagrams`
            }

            // Iterate over `keysToAnagrams` and add each set of anagrams to its own vector, and add the vector to `result` 
            for (auto it = keysToAnagrams.begin(); it != keysToAnagrams.end(); it++) {
                result.push_back(it->second);
            }

            return result;
        }
    
    private:
        string getKey(string s) {
            // Returns a unique key that represents that string's anagram configuration
            vector<int> count(26);
            for (char c : s) {
                count[c - 'a']++;
            }
            string key = "";
            for (int n : count) {
                key+=to_string(n)+'#';
            }
            return key; // Returns a string of numbers separated by #s. Each number between two #s represents the count of the occurrence of a lowercase character, i.e. 0#0#0#4#0#0#6#0#0#0#0#0... represents a combination of 'ddddgggggg'
        }
};
```

## References
[Leetcodee Problems - Group Anagrams](https://leetcode.com/problems/group-anagrams/)  

## Tags
