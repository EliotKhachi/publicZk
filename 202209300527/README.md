# SCRAM Authentication

In cryptography, *SCRAM* stands for the **Salted Challenge Response Authentication Mechanism**.   

SCRAM is a secure password authentication protocol that can authenticate a user to a server. It has several advantages over basic password authentication:  

	* does not reveal the user's cleartext password to the server  
	* is designed to prevent replay attacks   
	* enables the use of Channel Binding - [202209300625](../202209300625) - Channel Binding  
	* can support multiple cryptographic hash functions  
		* currently, PostgreSQL only supports SCRAM using SHA-256   


## References
[Microsoft Tech Community - How to securely authenticate with SCRAM in Postgres 13](https://techcommunity.microsoft.com/t5/azure-database-for-postgresql/how-to-securely-authenticate-with-scram-in-postgres-13/ba-p/1548319)  

[Wikipedia - Salted Challenge Response Authentication Mechanism](https://en.wikipedia.org/wiki/Salted_Challenge_Response_Authentication_Mechanism)  
## Tags
#cryptography #security
