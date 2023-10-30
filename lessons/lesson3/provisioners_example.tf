/*
Each terraform code has its own provisioner which defines what actions are executed.
You can create your own provisioner as well on either the Creation-time or Destroy-time
By default, a provisioner is a creation time provisioner
Use for custom automations/custom bootstrap commands
Best Practice: Try to use built in functions, provisioners are not rracked via state
*/

//example provisioner
resource "null_resource" "example" {
  provisioner "custom-exec" {
    command = "echo Hello > hello.txt"
  }

  //If the destroy time provisioner fails, terraform will try to run it again during the next destroy
  provisioner "destroy-example" {
    when = destroy
    command = "echo Bye > bye.txt"
  }
}
