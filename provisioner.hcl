# The Priviosner primary role is to provision new Tenant environments. This will be used by service accounts primarily, and is effectively an automated admin without
# Sys access control

path "auth/*"
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
