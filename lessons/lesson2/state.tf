/*
State: Mechanism of storing what infrastructure is deployed
      Maps resources in code (whats created compared to the terraform configuration
      JSON dump that holds information on everything deployed
      Determines what infrastructure is stored and what needs to be created - deployment delta
      Before any modification command, terraform refreshes the state file
      Tracks dependency metadata
Default State File: terraform.tfstate
Protect: PROTECT YOUR STATE FILE. Without the state file, terraform is not able to determine what
needs to be changed
*/

/*
Manually making changes to the terraform.tfstate is possible
Why:
- Advanced state management
- Manually remove resource from state file (don't want to manage it with Terraform)
- Set up terraform state file storage in the backend attribute
*/

/*
Common State Commands:
terraform state list: list out all resources tracked by Terraform State file
terraform state rm: delete a resource from the Terraform State file
terraform state show: show details of a resource tracked in the Terraform State file
*/

//Terraform State example
resource "docker_image" "terraform-centos" {
  name = "centos:7"
  keep_locally = true
}
resource "docker_container" "centos" {
  image = docker_image.terraform-centos.latest
  name = "terraform-centos"
  start = true
  command = ["/bin/sleep", "500"]
}

//run: terraform state list

/*State Locking: allows locking state so parallel executions don't coincide
Not supported by all remote storages - supported by GCP, AWS S3, etc
*/

//remote state storage example
terraform {
  backend "s3" {
    region = "us-east-1"
    key = "terraformstatefile"
    bucket = "mybucketname"
  }
}