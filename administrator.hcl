
#Admin can administrate Auth Backends broadly across Vault

path "auth/*"
{
	 capabilities = ["create", "read", "update", "delete", "list", "sudo"]

}

#Admin can administer policies broadly across Vault

path "sys/policies/*"
{
	capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}


#Admin can administer secrets backends broadly across Vault. 

path "secret/*"
{
	capabilities = ["create", "read", "update", "delete", "list", "sudo"]

}

#Admin can configure system endpoints like health checks and replication
path "sys/health/*"
{
        capabilities =["read", "sudo"]
}

