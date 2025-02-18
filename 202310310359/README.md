# Connect to a PostgreSQL Database Docker Instance

`psql -h localhost -p 1010 -U postgres -d example-database`  

* `psql` is the command used to connect to a postgres database.  
* The `-h localhost` option specifies that we are connecting from our local machine  
* The `-p 1010` option specifies that we are connecting from our local machine's (external) port 1010.  
* The `-U postgres` option specifies that we are connecting as the `postgres` user.  
* The `-d database-name` specifies that we are connecting to *example-database*, the name of the pre-existing database inside the docker instance.  

## Tags
#db #docker
