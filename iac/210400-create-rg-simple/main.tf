# Terraform settings Block
terraform {
  required_version = "~> 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm" # https://registry.terraform.io/providers/hashicorp/azurerm/latest
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# If you uncomemnt the following line, you will get a error about the following resource:

provider "azurerm" {
  features {}
}

#╷
#│ Error: Duplicate provider configuration
#│
#│   on main.tf line 16:
#│   16: provider "azurerm" {
#│
#│ A default (non-aliased) provider configuration for "azurerm" was already given at main.tf:12,1-19. If multiple configurations are required, set the "alias" argument for
#│ alternative configurations.
#╵

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}