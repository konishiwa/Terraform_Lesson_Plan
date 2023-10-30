/*
Terraform Module: container for multiple resources, allows for code reuse
Every configuration has at least one module (root module)
Modules outside of the root module are known as child modules
Modules can be referenced from:
- Terraform public registry
- Private registry
- Local system
Can use outputs and inputs from the main code
*/

//Example Module
module "sample-vpc" {
  source = "./"
  version = "0.0.5"
  region = "us-east-1"
  //Allowed meta-arguments: count, for_each, providers, depends_on
  //can reference variable inside the module code, for example: var.region
}
/*
How modules are referenced:
module.<name of module>.<module variable>
Example: module.sample-vpc.region
*/

/*
Outputs declared inside Terraform module can be used into the root module
module.<name-of-module>.<name-of-output>
*/

