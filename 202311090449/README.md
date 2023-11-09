# Top K Frequent Elements

## Problem
Given an integer array `nums` and an integer `k`, return the `k` most frequent elements. You may return the answer in any order.

 Example 1:
 Input: nums = [1,1,1,2,2,3], k = 2
 Output: [1,2]

 Example 2:
 Input: nums = [1], k = 1
 Output: [1]

Constraints:
1 <= nums.length <= 105
-104 <= nums[i] <= 104
k is in the range [1, the number of unique elements in the array].
It is guaranteed that the answer is unique.
                   
Follow up: Your algorithm's time complexity must be better than O(n log n), where n is the array's size.

## Solution
1. Declare a vector of integers `topKFrequentElements`.  
2. Declare a map `elementOccurrences`.  
3. Iterate over `nums` and add each element to the map as a key, and increment its value: `elementOccurrences[nums[i]]++;`  
4. Sort the map in decreasing order based on values.  
5. Loop through the map until the kth index, adding each key to `topKFrequentElements`.  
6. return `topKFrequentElements`.  



```c++
#include <iostream>
#include <map>
#include <vector>
using namespace std;

class Solution {
    public:
        vector<int> topKFrequent(vector<int> nums, int k) {
            vector<int> topKFrequentElements; 
            map<int, int> elementOccurrences;
            vector<pair<int, int>> elementOccurrencesPairs;
            for (int n : nums) {
                elementOccurrences[n]++; 
            }

            for (auto it : elementOccurrences) {
                elementOccurrencesPairs.push_back(it);
            }

            sort(elementOccurrencesPairs.begin(), elementOccurrencesPairs.end(), pairOfIntComparator);

            for (int i = 0; i < k; i++) {
                topKFrequentElements.push_back((elementOccurrences.begin() + i)-->first); 
            }

            return topKFrequentElements;
        }
    private:
        static bool pairOfIntComparator(pair<int, int> a, pair<int, int> b) {
            return a.second > b.second;
        }
};
```


## References
[GeeksForGeeks - Sort Map by Values C++](https://www.geeksforgeeks.org/sorting-a-map-by-value-in-c-stl/)  
[GeeksForGeeks - Sort Function C++](https://www.geeksforgeeks.org/sort-c-stl/)  

## Tags
