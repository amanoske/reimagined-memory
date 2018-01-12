import "strings"

data_match = func() {
    # Make sure there is request data
    if length(request.data else 0) is 0 {
        return false
    }

    # Make sure request data includes paths
    if length(request.data.paths else 0) is 0 {
        return false
    }

    # For each path, verify that it is in the allowed list
    for strings.split(request.data.paths, ",") as path {
        # Make it easier for users who might be used to starting paths with
        # slashes
        sanitizedPath = strings.trim_prefix(path, "/")

	#This assumes some kind of naming convention, like TENANT to denote that this is from the right tenant
        if not strings.has_prefix(sanitizedPath, "TENANT") and
     		return false
        }
    }

    return true
}

# Only care about writing; reading can be allowed by normal ACLs
precond = rule {
    request.operation in ["create", "update"] and
    strings.has_prefix(request.path, "sys/policies/egp/")
}

#Really the CTA should be the only person here who uses this, so it's fair to assume EGP naming conventions should rightfully take this on.

main = rule when precond {
    strings.has_prefix(request.path, "sys/policies/egp/TENANT-cta) and data_match()
}
