/*
Terraform has built-in functions, no user-defined functions are allowed
*/

//Example function
variable "project-name" {
  type = string
  default = "prod"
}

resource "aws_vpc" "my-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = join("-",["terraform", var.project-name])
  }
}

//You can test out functions using the terraform console command