//Example Provider: AWS
provider "aws" {
  region  = "use-east-1" //configuration parameters
  version = "3.7.0"
}


resource "aws_security_group" "example-sg" {
  name = "example-security-group"
  vpc  = aws_vpc.my-vpc.id
  dynamic "ingress" {
    for_each = var.rules //iterates over following, so you don't have to create 20 ingress rules
    content {
      from_port   = ingress.value["port"]
      to_port     = ingress.value["port"]
      protocol    = ingress.value["proto"]
      cidr_blocks = ingress.value["cidrs"]
    }
  }
}