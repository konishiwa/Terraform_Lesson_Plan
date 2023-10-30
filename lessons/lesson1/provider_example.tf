/*
Provider: Terraform's way of abstracting integrations with API control layer for various cloud/infra vendors
          Popular providers might be AWS, GCP, Azure, etc - you can write your own provider as well if you can't
          find a provider you need
          Each provider has their own resources associated with it
Provider Versioning: Terraform versions and provider versions are released separately (not related)
*/

//Example Provider: AWS
provider "aws" {
  region = "use-east-1" //configuration parameters
  version = "3.7.0"
}

//Example Provider: GCP
provider "google" {
  project = "example-gcp-terraform-project"
  region = "us-west-1"
  //If no version is specified, Terraform will pull the latest version
}