# Terraform settings Block
terraform {
  required_version = ">=1.0.0"
  # required_providers {
  # azurerm = {
  # source  = "hashicorp/azurerm" # https://registry.terraform.io/providers/hashicorp/azurerm/latest
  # version = "~>3.0"
  # }
  # }

  backend "remote" {
    organization = "vivek-hcta-azure-demo1"
    workspaces {
      name = "cli-driven-terraform-azure-demo"
    }
    # hostname = "value"  # defaults to app.terraform.io but for Enterprise customers it is going to be where you hosted TF Cloud related binary
    # token = "value" # Hard Code TF Cloud Token - Not recommended use from TF CLI only 
  }

}

provider "azurerm" {
  features { }
}

# Your code goes here
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

variable "resource_group_name" {
  default     = "vivek-terraform-simple-rg"
  description = "Resource Group name"
}

variable "resource_group_location" {
  default     = "centralindia"
  description = "Location of the resource group."
}