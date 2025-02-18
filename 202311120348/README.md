# Container With Most Water

## Problem
You are given an integer array height of length `n`. There are `n` vertical lines drawn such that the two endpoints of the `ith` line are `(i, 0)` and `(i, height[i])`.  

Find two lines that together with the x-axis form a container, such that the container contains the most water.  

Return the maximum amount of water a container can store.  

Notice that you may not slant the container.  

## Solution
* Initialize an integer for the `maxArea` found.  
* Initialize left and right pointers, `l` and `r`.  
* Iterate over the array `height` from the left and right, recording and comparing `current` areas to the `maxArea` for various combinations of container walls.  
* Increment `l` or `r` depending on whose container is bigger.  

Time Complexity: O(n)
Space Complexity: O(1)

```c++
#include <algorithm>

class Solution {
    public:
        int maxArea(vector<int> height) {
            int maxArea = 0;
            int l = 0;
            int r = height.size()-1;
            while (l < r) {
                int current = min(height[r],height[l])*(r-l);    
                maxArea = max(maxArea,current);
                // if (height[r] - height[r-1] < height[l] - height[l+1]) r--; // Iterate based on next container's area (wrong strategy)
                if (height[r] < height[l]) r--;
                else l++;
            }
            return maxArea;
        }
};
```
## References
[Leetcode Problems - Container With Most Water](https://leetcode.com/problems/container-with-most-water/submissions/  )
[C++ STL - Algorithm](https://en.cppreference.com/w/cpp/header/algorithm)  
[GeeksForGeeks - C++ Vector](https://www.geeksforgeeks.org/vector-in-cpp-stl/)  

## Tags
