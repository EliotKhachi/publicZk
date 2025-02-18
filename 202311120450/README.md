# Best Time to Buy And Sell Stock

## Problem
You are given an array `prices` where `prices[i]` is the price of a given stock on the `ith` day.  

You want to maximize your profit by choosing a **single day** to buy one stock and choosing a **different day in the future** to sell that stock.  

Return the *maximum profit you can achieve from this transaction*. If you cannot achieve any profit, return `0`.

## Solution
Iterate over `prices` with a left and right pointer. 

```c++
#include <algorithm>
#include <vector>

class Solution {
    public:
        int maxProfit(vector<int> prices) {
            int maxProfit = 0, l = 0, r = 1;
            while (r < prices.size()) {
                if (prices[r] > prices[l]) {
                    maxProfit = max(maxProfit, prices[r] - prices[l]);
                }
                else {
                    l = r;
                }
                r++;
            }
            return maxProfit;
        }
};
// Example
// [7,1,5,3,6,4]
// l=0,r=1,maxP=0:
// l=1,r=2,maxP=0: maxP=4
// l=1,r=3,maxP=4: maxP=4
// l=1,r=4,maxP=4: maxP=5
// l=1,r=5,maxP=5: maxP=5
```

Time: O(n)  
Space: O(1)  

## References
[Leetcode Problems - Best Time to Buy and Sell Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/)  
[C++ STL - Algorithm](https://en.cppreference.com/w/cpp/header/algorithm)  
[GeeksForGeeks - C++ Vector](https://www.geeksforgeeks.org/vector-in-cpp-stl/)  

## Tags
