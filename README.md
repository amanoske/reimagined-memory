# reimagined-memory
This repo focuses on providing ACL policy examples for a sample Vault environment. 


**Administrator (admin.hcl):** Administrator is a type of user empowered with managing a Vault infrastructure for a team or organizations. Empowered with *sudo*, the Administrator is focused on configuring and maintaining the health of Vault cluster(s) as well as providing bespoke support to Vault users. 
**Provisioner (provisioner.hcl):** Provisioner is a type of user or service that will be used by an automated tool (e.g.: Terraform) to provision and configure a namespace within a Vault secret backend for a new Vault user to access and write secrets.
**User (user.hcl):** A user is a type of user or application that stores and retrieves secrets from Vault. 
