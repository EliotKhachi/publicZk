# Hosting a Server - DNS Using Cloudflare API

See --> [202206170404](../202206170404) - Configure Raspberry Pi to Host a Server <-- to get started on hosting a server  
---
Next, you'll need to set up Dynamic DNS on your machine and link it to the domain name you want. [DDNS on a Raspberry Pi using the Cloudflare API (Dynamic DNS)](https://www.youtube.com/watch?v=rI-XxnyWFnM)

**NOTE:** A couple other things not mentioned in the video but are necessary:  
1. Change `proxy="false"` to `proxy="true"`  
2. Change `auth_method="local"` to `auth_method="global"`  
Now the DNS Content (IP address) of the specified `record_name` in the `cloudflare.sh` script you just wrote should change to your router's public IP address whenever the script is executed. Go ahead and write your `crontab` for it.


## References
1. [Raspberry Pi versus AWS](https://www.youtube.com/watch?v=QdHvS0D1zAI&t=69s)  

## Tags
#dev 
