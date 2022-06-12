# Nginx Directory Structure 

Nginx keeps it's configuration in the */etc/nginx* directory
**Template:** *Path* - purpose:
*./nginx.conf* - The primary configuration file
*./conf.d/\*.conf* - Extra configuration files  
*./proxy_params* and *./scgi_params* - Commonly configured directives  
*./sites-available/\* (ubuntu)*  - Extra virtual host config files  
*./sites-enabled/\* (ubuntu)* - Symlink to sites-available/<file> to enable vhost  

## Best Practices
* Do not edit */etc/nginx/nginx.conf*, instead add customizations in the *conf.d* directory.  
* 

## References
[wiki.debian.org - Nginx Directory Structure](https://wiki.debian.org/Nginx/DirectoryStructure)  

## Tags
#nginx
