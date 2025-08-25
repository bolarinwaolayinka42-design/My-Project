My Terraform Azure Project

This project demonstrates how to use Infrastructure as Code (IaC) to provision and manage cloud resources on Microsoft Azure using Terraform. It deploys a secure network infrastructure with a Linux virtual machine and all associated resources.

Project Purpose

The primary goals of this project are to showcase:

Infrastructure as Code (IaC): Define, provision, and manage cloud infrastructure in a repeatable and version-controlled way.

Cloud Computing: Hands-on experience with Azure services, including Virtual Networks (VNet), Subnets, Network Security Groups (NSG), Public IP addresses, and Virtual Machines.

Security Best Practices: Follow secure secret management practices by excluding sensitive files from Git using a .gitignore file.

Version Control: Maintain project history and collaborate using Git.

Technologies Used

Terraform: Infrastructure provisioning.

Microsoft Azure: Cloud provider for all resources.

Git: Version control.

Resources Deployed

`azurerm_resource_group`: Container for all Azure resources.

`azurerm_virtual_network`: Virtual network to host subnets.

`azurerm_subnet`: Subnets within the VNet.

`azurerm_network_security_group`: Controls traffic to/from the VM.

`azurerm_subnet_network_security_group_association`: Links subnet to NSG.

`azurerm_public_ip`: Public IP for the VM.

`azurerm_network_interface`: Network interface attached to the VM.

`azurerm_linux_virtual_machine`: Core compute resource.

Getting Started
1. Clone the repository

`git clone https://github.com/bolarinwaolayinka42-design/My-Project.git`
`cd My-Project`

2. Create Terraform variables file

Create a file named terraform/terraform.tfvars and add your Azure credentials and configuration variables. This file is excluded from Git using .gitignore.

Example terraform.tfvars:

client_id       = "your_client_id"
client_secret   = "your_client_secret"
subscription_id = "your_subscription_id"
tenant_id       = "your_tenant_id"

3. Initialize Terraform
`terraform init`

4. Review the plan
`terraform plan`

5. Apply the configuration
`terraform apply`

Security Note

Sensitive credentials are stored in terraform.tfvars, which is ignored by Git using .gitignore. This ensures that your secrets are never committed to the repository.

Project Structure
My-Project/
│
├─ README.md
├─ .gitignore
└─ terraform/
   ├─ main.tf
   └─ variable.tf

Summary

This project demonstrates a complete Azure network infrastructure deployment using Terraform. It highlights automation, security, and cloud infrastructure management best practices. The project is fully version-controlled and can be reproduced by anyone with the proper credentials.