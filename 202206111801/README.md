# Nginx Installation

## Installation Commands
```bash
        sudo apt install nginx -y
        sudo systemctl start nginx # start service
        sudo systemctl stop nginx # stop service
        sudo systemctl status nginx # see service status
        sudo systemctl enable nginx # auto start when Linux server is rebooted
        sudo systemctl disable nginx # disable auto start
        sudo systemctl restart nginx # restart service
        sudo systemctl reload nginx # reload config settings without restarting

        # Enable firewall access
        sudo ufw app list # list applications
        sudo ufw allow 'Nginx ...' # allow an Nginx application (Full, HTTP(S))
        sudo ufw status # verify Nginx is active

```

## Tags
#dev #nginx
