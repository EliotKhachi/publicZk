# Deploy a Web Application Using Nginx 

*NGINX*, pronounced as Engine-X, is a free and open-source web server software that is optimized for very high performance and stability using a non-threaded and event-driven architecture. Review what web servers are here --> [202206110226](../202206110226) - What is a Web Server?

Nginx has capabilities for...
* Reverse proxying [202206110220](../202206110220) - Proxy vs Reverse Proxy.  
* Caching  
* Load balancing 
* HTTP  
* Proxy servers for email (IMAP, POP3, and SMTP)


## Commands
```bash
	sudo apt install nginx -y
	sudo systemctl start nginx # start service
	sudo systemctl stop nginx # stop service  
	sudo systemctl status nginx # see service status  
	sudo systemctl enable nginx # auto start when Linux server is rebooted	
	sudo systemctl disable nginx # disable auto start  
	sudo systemctl restart nginx # restart service 
	sudo systemctl reload nginx # reload config settings without restarting 

```

## References
[Linux Shell Tips - How to Host a Website on NGINX Server](https://www.linuxshelltips.com/install-nginx-in-linux/)
[YouTube - Nginx Tutorial | Learn Nginx Fundamentals | Deploy a Web Application Using Nginx | Edureka](https://www.youtube.com/watch?v=1ndlRiaYiWQ)

## Tags
#dev
