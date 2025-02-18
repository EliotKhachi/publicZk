# Caching Design Patterns

**Lazy Loading / Cache-Aside / Lazy Population** - Caches *all* requested data, that is requested at *any* point. Think Cloudfront. *Cache is only filled with used data. Cache misses cause increased latency. Data in cache may be old*  

**WriteThrough** - Add or update cache when database is updated. *Cache is never stale but may store a lot of never-read data; reads are quick but we have a write penalty.*  
**Cache Evictions** - 1) explicit deletion of items in the cache, 2) when the cache memory is full, you delete items based on how recently they were used, or 3) you set a time-to-live (TTL) for the cache items (ranges from a few seconds to days).  

All 3 of these caching design patterns can be combined for certain types of data, except you don't want to combine TTL with WriteThrough.  

* Quote: There are only two hard things in Computer Science: cache invalidation and naming things.  

## Tags
#db
