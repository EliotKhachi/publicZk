# Create MySQL Docker Container

```bash
docker run \
--name container-name \
-e MYSQL_ROOT_PASSWORD=my-password \
-p 3306:3306 \
-d \
mysql
```

1. `docker run` is a shortcut command for `docker pull`, `docker create`, and `docker start`  
2. `--name container-name` names the container with a useful name. "container-name" is used here for demonstration.  
3. `-e MYSQL_ROOT_PASSWORD=my-password` sets the container's  *MYSQL_ROOT_PASSWORD* environment variable. Replace "my-password" with a good password.  
4. `-p 3306:3306` links the container's internal port 3306 to our physical network port 3306. MySQL's default network port is 3306.  
5. `-d` stands for *detached* and tells the container to run in the background of the terminal session.  
6. `mysql` is the name of the docker image used to create the container. Without explictly mentioning the tag, we pull `mysql:latest` here.  

## Tags
#docker #db
