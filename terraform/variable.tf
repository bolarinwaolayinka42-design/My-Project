variable "azure_subscription_id" {
  description = "Subscription ID for the Azure account"
  type        = string
}

variable "azure_tenant_id" {
  description = "Tenant ID for the Azure Active Directory"
  type        = string
}

variable "azure_client_id" {
  description = "Client ID (App ID) for the Service Principal"
  type        = string
}

variable "azure_client_secret" {
  description = "Client Secret for the Service Principal"
  type        = string
  sensitive   = true
}

variable "resource_group_name" {
  description = "name of the resource group"
  type        = string
  default     = "prod-api-rg"
}

variable "location" {
  description = "Azure region to deploy resources in"
  type        = string
  default     = "West Europe"
}

variable "vnet_name" {
  description = "name of the Virtual Network"
  type        = string
  default     = "prod-api-vnet"
}

variable "subnet_name" {
  description = "name of the Subnet"
  type        = string
  default     = "prod-api-subnet"
}

variable "address_space" {
  description = "address space for the Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_prefix" {
  description = "address prefix for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "vm_size" {
  description = "size of the Virtual Machine"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "admin username for the Virtual Machine"
  type        = string
  default     = "adminuser"
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}
