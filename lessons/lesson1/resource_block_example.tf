/*
Example Resource Block:
- aws_instance: resource provided by Terraform provider
- web: user-provided resource name (whatever you want to call the resource)
- resource config arguments: inside the curly braces
                             these will change depending on whats required by the resource
*/
resource "aws_instance" "web" {
  ami = "ami-a1b2c3d4"
  instance_type = t2.micro
}

/*
Accessing a resource: <resource_type>.<name_of_resource>
Accessing Example: aws_instance.web
*/