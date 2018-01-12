# The CSRU will be focsed on gathering metrics; mostly read-only access to the auth and secrets infra of all tenantsn

path "token_rotator/*" 
{
	capabilities = ["read", "list"]

}

path "secret/*"
{
	capabilities = ["read", "list"]
}


path "auth/ldap/*"
{
	 capabilities = ["read", "list"]

}

#CSA will need to be able to check the status of the Vault system
path "sys/health/*"
{
        capabilities =["read", "sudo"]
}

