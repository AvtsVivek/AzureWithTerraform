# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }
}

# Provider Block
provider "azurerm" {
  features {}
}

# Call our Custom Terraform Module which we built earlier
module "azure_resource_group_vivek_rg" {
  source = "./modules/vivek-rg" # Mandatory

  # Resource Group
  resource_group_location = "eastus"
  resource_group_name     = "myrg1"
}


