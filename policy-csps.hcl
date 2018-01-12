# The CSPPS' primary role is to provision new Tenant environments. This will be used by service accounts primarily, and is effectively an automated admin without
# healthcheck capabilities

path "token_rotator/*" 
{
	capabilities = ["create", "read", "update", "delete", "list"]

}

path "auth/ldap/*"
{
	 capabilities = ["create", "read", "update", "delete", "list", "sudo"]

}

path "sys/policy/*"
{
	capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "secret/*"
{
	capabilities = ["create", "read", "update", "delete", "list", "sudo"]

}
