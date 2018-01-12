# The CTA has the ability to administer tenant-focused aspects  of the token_rotator plugin

path "token_rotator/TENANT" 
{
	capabilities = ["create", "read", "update", "delete", "list"]

}

# CTA can maintain auth details for the tenant

path "auth/ldap/groups/TENANT"
{
	 capabilities = ["create", "read", "update", "delete", "list", "sudo"]

}

# CTA can administer policies for tenants. Until policy namespaces come into play, we give them effectively admin but couple with an EGP that we tie to their access to /sys/policies/egp

path "sys/policies/*"
{
	capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}


#Tenants will use the K/V store, so assume management of tenant namespaces of the  secret backend
path "secret/TENANT/*"
{
	capabilities = ["create", "read", "update", "delete", "list", "sudo"]

}


#CTA will need to be able to check the status of the Vault system
path "sys/health/*"
{
	capabilities =["read", "sudo"]
}
