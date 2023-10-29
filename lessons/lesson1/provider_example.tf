/*
Reserved Keyword:
Provider Name:
Configuration Parameters:
*/

//Example Provider: AWS
provider "aws" {
  region = "use-east-1" //configuration parameters
}

//Example Provider: GCP
provider "google" {
  project = "example-gcp-terraform-project"
  region = "us-west-1"
}