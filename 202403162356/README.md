# Caching Implementation Considerations

**Is it safe to cache data?** *Will critical data that is out-of-date be served to the client?*  
**Is caching effective for that data?** *The purpose of caching is to improve performance for fetching a particular dataset. If the data changes quickly, caching just adds more R/W operations and would slow down performance.*  
**Is data structured well for caching?** *example: key-value caching or caching aggregated results.*  
**Which caching design patterns is the most appropriate?**   


## References
[AWS Caching Implementation Considerations](https://aws.amazon.com/caching/implementation-considerations/)

## Tags
#aws #db
