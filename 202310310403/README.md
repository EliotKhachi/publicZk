# Create a Database Docker Instance

To create a database docker instance, you need to understand what environment variable to set within you docker instance, depending on the type of docker instance.  

Taking PostgreSQL as an example, take the following command: `docker run --name sysml2-postgres -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword -e POSTGRES_DB=sysml2 -d postgres`  

In this case, we are setting the environment variable `POSTGRES_DB=sysml2`. Now we can connect to the database inside of this instance. [Connect to a PostgreSQL Database Docker Instance](../202310310359)  

## Tags
#db #docker
