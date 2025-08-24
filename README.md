My Terraform Azure Project
This project demonstrates the use of Infrastructure as Code (IaC) to provision and manage cloud resources on Microsoft Azure using Terraform. It deploys a complete and secure network infrastructure along with a Linux virtual machine.

Project Purpose
The primary goal of this project is to showcase the following skills:

Infrastructure as Code: Using Terraform to define, provision, and manage cloud infrastructure in a repeatable and version-controlled way.

Cloud Computing: Practical experience with Microsoft Azure services, including Virtual Networks (VNet), Subnets, Network Security Groups (NSG), Public IP addresses, and Virtual Machines.

Security Best Practices: Implementing secure secret management by using a .gitignore file to prevent sensitive data from being committed to the public repository.

Version Control: Using Git to track changes, maintain project history, and collaborate.

Technologies Used
Terraform: For infrastructure provisioning.

Azure: The cloud provider for all resources.

Git: For version control.

Project Resources
The Terraform configuration in this project deploys the following resources on Azure:

azurerm_resource_group: A logical container for all the Azure resources.

azurerm_virtual_network: A virtual network to host the subnet.

azurerm_subnet: A subnet within the virtual network.

azurerm_network_security_group: An NSG to control network traffic to and from the virtual machine.

azurerm_subnet_network_security_group_association: Links the subnet to the NSG.

azurerm_public_ip: A public IP address for the virtual machine.

azurerm_network_interface: A network interface to attach the VM to the network.

azurerm_linux_virtual_machine: The core compute resource.

Getting Started
Clone the repository:

git clone https://github.com/bolarinwaolayinka42-design/My-Project.git
cd My-Project

Create your terraform.tfvars file:
Create a file named terraform/terraform.tfvars and add your Azure credentials and other variables. This file is excluded from Git by the .gitignore file for security.

# example content for terraform.tfvars
# client_id = "your_client_id"
# client_secret = "your_client_secret"
# ...

Initialize Terraform:

terraform init

Review the plan:

terraform plan

Apply the configuration:

terraform apply

Security Note
This project uses a .gitignore file to ensure that your sensitive credentials stored in terraform.tfvars are never committed to the public repository. This is a critical security best practice.