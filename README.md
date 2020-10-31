# vault-rbac
This repo focuses on providing ACL policy examples for a sample Vault environment. 


**Administrator (admin.hcl):** Administrator is a type of user empowered with managing a Vault infrastructure for a team or organizations. Empowered with *sudo*, the Administrator is focused on configuring and maintaining the health of Vault cluster(s) as well as providing bespoke support to Vault users. 

**Provisioner (provisioner.hcl):** Provisioner is a type of user or service that will be used by an automated tool (e.g.: Terraform) to provision and configure a namespace within a Vault secret backend for a new Vault user to access and write secrets.

**User (user.hcl):** A user is a type of user or application that stores and retrieves secrets from Vault. 

In this model, we assume that users will be authed from any of the Vault auth backends and will use possibly any secret backend. However we want to caution that in conformance with Vault's "least privilege" model of security that ideally you would have specific auth backends and secret backends for each user and reflect those within their ACL policy. 

Users in this are also allowed to interact broadly with any secret in the global namespace. In real life, a provisioner may want to provision a specific namespace for thier use (e.g.: /secrets/key/user_a) and then restrict RBAC for the user to this namespace. 
