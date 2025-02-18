# GPL License

The GNU General Public (GPL) License is more strict than the [MIT License](../202401280229).  

When applied to a set of files and/or documentation files (the "Software"), the GPL license 1) states that this Software doesn't come with any warranty and 2) grants any person rights to use, copy, modify and/or distribute it under the following conditions:  
1. Any distributors must make the Software, or any modified version thereof, and any additions or combinations to said Software, available under the same licensing terms.  
2. Distributors must make the Software, or any modified version thereof, and any additions or combinations to said Software, open-source.  

With that being said, there are ways to avoid open-sourcing your proprietary software while taking advantage of GPL-licensed software. For example, instead of compiling your code into a single executable before runtime (thereby compiling/linking the GPL-license code to produce a combined work, i.e. the resulting executable), you can link your proprietary software with GPL-licensed libraries *during* runtime (dynamic linking) by having your executable reference dynamic-link libraries (DLLs). Distributors of such dual-licensed software must still provide access to the GPL-licensed library's source code, among other requirements.  

## References
[Wikipedia - GNU General Public License](https://en.wikipedia.org/wiki/GNU_General_Public_License)

## Tags
