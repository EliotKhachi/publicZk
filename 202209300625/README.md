# Channel Binding 

**Channel Binding** is the process of *binding* the lower encryption channel to the higher application channel for cross-directional authentication.  

---
Consider the following situation:

Alice wants to log into Bob's server. She sends a hashed version of her password, but there was a *man-in-the-middle attack*, and Bob didn't get it. Instead, the attacker did. Thankfully, the password was hashed so the attacker couldn't decipher it. But still, Bob didn't receive it.  

For solving this, Bob registers himself to a certificate authority (CA), which signs his certificate. Alice *could* solely rely on that signature system, but she knows it has weaknesses. To give her additional assurance that there is no man-in-the-middle attack, Bob creates a proof that he knows the password (or a salted hash thereof), and includes his certificate into this proof. This inclusion is called **channel binding**, as the lower encryption channel is 'bound' to the higher application channel.

Alice then has an authentication of Bob, and Bob has authentication of Alice. Taken together, they have mutual authentication.

## References
[Wiki - Salted Challenge Response Authentication Mechanism](https://en.wikipedia.org/wiki/Salted_Challenge_Response_Authentication_Mechanism)  
## Tags
#security #cryptography
