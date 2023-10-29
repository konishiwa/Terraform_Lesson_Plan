/*
Data Source Block: used to fetch details of an already existing resource in AWS
You are not creating infrastructure with a data source block, only fetching the details
for use later.
*/

/*
Example data source block
aws_instance: resource provided by terraform provider
my-vm: user-provided resource name (whatever you want to call the resource)
*/
data "aws_instance" "my-vm" {
  instance_id = "instance123"
}