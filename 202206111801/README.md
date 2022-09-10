# Nginx - Getting Started 

## Installation
 
```bash
	sudo apt update
        sudo apt install nginx -y
```

## Useful Commands 
```bash
        sudo systemctl start nginx # start service
        sudo systemctl stop nginx # stop service
        sudo systemctl status nginx # see service status
        sudo systemctl enable nginx # auto start when Linux server is rebooted
        sudo systemctl disable nginx # disable auto start
        sudo systemctl restart nginx # restart service
        sudo systemctl reload nginx # reload config settings without restarting
```
After starting the nginx service, try `curl localhost` to see if you pull the default nginx welcome page html file.

## Enable Firewall Access
```bash
        sudo ufw app list # list applications
        sudo ufw allow 'Nginx ...' # allow an Nginx application (Full, HTTP(S))
        sudo ufw status # verify Nginx is active
```

## Proxy to Your Web App
To edit Nginx's default configuration, go to `/etc/nginx/sites-available` and use your preferred text editor to edit `default`.

Inside the `location` braces, add `proxy_pass http://localhost:3000`, or any other local port you wish to host from.  

Save the file and run `sudo /etc/init.d/nginx restart`

## References
[Fireship@YouTube - Host your Website on the Raspberry Pi](https://www.youtube.com/watch?v=QdHvS0D1zAI&t=394s)

## Tags
#dev #nginx
