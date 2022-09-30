# PostgreSQL 

The **PostgreSQL Client Authentication Configuration File** controls: which hosts are allowed to connect, how clients are authenticated, which PostgreSQL user names they can use, and which databases they can access.  

The file can be found in the following location on Ubuntu:  
`/etc/postgresql/<version>/main/pg_hba.conf`   

The recommended form of secure password authentication is `scram-sha-256`  
See --> [202209300527](../202209300527) - SCRAM Authentication

## References
[PostgreSQL Docs - Client Authentication](https://www.postgresql.org/docs/current/client-authentication.html)  

[Microsoft Tech Community - How to securely authenticate with SCRAM in Postgres 13](https://techcommunity.microsoft.com/t5/azure-database-for-postgresql/how-to-securely-authenticate-with-scram-in-postgres-13/ba-p/1548319)  

## Tags
#postgres
