/*
Output variables are shown in the terminal after running a successful terraform apply
Output variables can be accessed in remote configurations via terraform_remote_state
Can be used to expose a subset of its resource to a parent module
Outputs print valuers into the CLI after a successful terraform apply
*/

//example output
output "instance_arn" {
  description = "EC2 instance ARN"
  value = aws_instance.arn
}