# Create a MySQL Docker Container 

```bash
docker run \
--name container-name \
-e MYSQL_ROOT_PASSWORD=my-password \
-p 3307:3306 \
-d \
mysql
```

1. `docker run` is a shortcut command for `docker pull`, `docker create`, and `docker start`  
2. `--name container-name` names the container. Replace "container-name" with a useful name.   
3. `-e MYSQL_ROOT_PASSWORD=my-password` sets the container's  *MYSQL_ROOT_PASSWORD* environment variable. Replace "my-password" with a good password.  
4. `-p 3007:3306` links our container (internal) port 3306 to our host machine (external) port 3307. MySQL's default network port is 3306. I am using 3307 here for clarity of syntax.   
5. `-d` stands for *detached* and tells the container to run in the background of the terminal session.  
6. `mysql` is the name of the docker image used to create the container. Without explictly mentioning the tag, docker automatically pulls `mysql:latest` for us.  

[Connect to a PostgreSQL Database Docker Instance](../202310310359)

## Tags
#docker #db
