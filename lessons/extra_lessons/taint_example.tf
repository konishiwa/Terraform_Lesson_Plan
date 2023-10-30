/*
Terraform taint: taints a resource
                 Forces the resource to get destroyerd and required (also reflects in state file, which forces it to be recreated)
                 Command: terraform taint <resource_address>'
                 Causes provisioners to run
                 Can be used to replace resources by force
*/