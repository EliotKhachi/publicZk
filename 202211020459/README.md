# Set Up Lynx Text Web Browser 

1. Install Linux.

2. Fire up a terminal.  

3. Install Lynx.  

4. Configure Lynx.  
	* Open or change into your `dotfiles` repo.  
	* Create or copy a `lynx.cfg` file
	* Create or copy a `lynx.lss` file  
	* Create a lynx wrapper script that calls that actual Lynx pointing to the `lynx.cfg` and `lynx.lss` files. *Be careful here. It's easy to create a circular reference.*  
	* Tell your shell about the `lynx` wrapper and where to find it. Easiest way might be to just add an extra entry to your path.   

	

## References
[rwxrob - YouTube: Lightning Fast Command-Line Web Search with Lynx, Google's Clueless, DuckDuckGo Rocks! Shitty JavaSc](https://www.youtube.com/watch?v=hifs83xV2PQ&t=3080s)  

## Tags
#terminal
