# The CSA has the ability to administer all aspects of the token_rotator plugin

path "token_rotator/*" 
{
	capabilities = ["create", "read", "update", "delete", "list"]

}

# CSA can administer all aspects of the LDAP backend. Adding sudo here for any root protected endpoints

path "auth/ldap/*"
{
	 capabilities = ["create", "read", "update", "delete", "list", "sudo"]

}

# CSA can administer policies broadly across Vault

path "sys/policies/*"
{
	capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "secret/*"
{
	capabilities = ["create", "read", "update", "delete", "list", "sudo"]

}

#CSA will need to be able to check the status of the Vault system
path "sys/health/*"
{
        capabilities =["read", "sudo"]
}

