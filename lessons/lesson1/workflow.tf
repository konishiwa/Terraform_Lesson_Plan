/* Terraform Lesson 1: Basic Terraform Workflow & Important Commands

write <-> plan -> deploy -> (optional) destory

1. terraform init: The first command you should run
                   initializes terraform repository
                   downloads modules and plugins
                   sets up the backend (where Terraform state file is stored).
2. terraform plan: Review changes to your code, read-only (no actual changes)
                   shows a "plan" of all resources that will be created
                   authentication credentials are required if deploying to a Cloud Provider
3. terraform apply: Apply your IaC after reviewing/planning
                    Deploys the actual infrastructure from tf code
                    Updates/Creates the Terraform state file
4. terraform destroy: destroys all created resources in the tf file
                      helps you clean out the deployment uniformly
                      non-reversible!
*/