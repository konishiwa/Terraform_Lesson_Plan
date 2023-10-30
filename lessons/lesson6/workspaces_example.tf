/*
Workspaces used to track alternate state files within the same working directory
Great for multiple environments
Terraform always has a default workspace you run out of
terraform workspace new <workspace name>: creates a new workspace
terraform workspace select <workspace name> selects the workspace
${terraform.workspace} - access to a workspace name variable
*/
provider "aws" {
  region = "us-east-1"
}

//example Terraform workspace
resource "aws_s3_bucket" "bucket" {
  bucket = "my-example-bucket-${terraform.workspace}"
}