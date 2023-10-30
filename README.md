![Image of terraform logo](imgs/terraform.png)
# Terraform Lesson Plan
This repo contains a lesson plan for learning Terraform
## Description
Service:
* [Terraform](https://www.terraform.io/) - Cloud Agonistic Infrastructure as Code (IaC) service

## Project Structure
The infrastructure for the project is as defined below.
```~~~~~~~~
├── README.md <-------------- This guide to the project.
├── terraform <------------ Contains terraform code 
├── assignments <------------ Contains Terraform Assignments
├── lessons <------------ Contains notes about Terraform
└──imgs <------------------ images for README.md
```

## Prereqs

- Terraform
  - https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
  - 4 Ways to Download Terraform: Manual installation, Homebrew (for MacOS), Chocolatey (Windows), Linux (add Hashicorp to Linux distribution)
- Terraform Autocomplete   
  -  `terraform -install-autocomplete`: offers tab completion for your terminal.

## Running the Project
- Add your json service account key to the root directory
- Change directory into a folder with terraform code
- Change the main.tf file to your unique configurations (comments are in the file for guidance)
- Run the following commands:
    -  `terraform init`: initalizes your working directory
    -  `terraform plan`: shows the execution plan for your infrastructure. Lets you see which resources are being created
    -  `terraform apply`: apply changes to the infrastructure through changes made in the main.tf file 