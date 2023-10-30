/*
Config Parameters: All config parameters in a variable are optional
Referencing a variable: var.<name of variable>
Best Practice: put all variables in a file: terraform.tfvars
*/

//Variable example 1
variable "my-first-variable" {
  description = "Lesson 2 example variable"
  type = String
  default = "Hello"
  validation {
    condition = length(var.my-first-variable) > 0
    error_message = "You must enter a variable with at least one character"
  }
}

/*
Variable Types:
Base/Primitive Types (single type value): string, number, bool
Complex Types (multiple values in a single value): list, set, map, object, tuple
Complex Types - Collections: multiple values of one primitive type grouped together
  list(type), map(type), set(type)
Complex Types - Structural: allow multiple values of different primitive types to be grouped together

*/

//Variable example 2
variable "az_names" {
  type = list(string)
  default = ["us-west-1a"]
}

//Variable example 3
variable "ports" {
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))
  default = [
    {
      internal = 8300
      external = 8300
      protocol = "tcp"
    }]
}

//Example Collection Type:
variable "studying" {
  type = list(string)
  default =  ["terraform", "today"]
}
