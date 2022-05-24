# How to Install Docker

1. Install

```
	sudo snap install docker
```

2. Grant Permissions
```
	sudo groupadd docker # add docker group
	sudo usermod -aG docker $USER # add user to docker group
	sudo chown root:docker /var/run.docker.sock # change permissions of docker.sock
	sudo chown -R root:docker /var/run/docker # change permissions of docker
```

## Tags
#linux
