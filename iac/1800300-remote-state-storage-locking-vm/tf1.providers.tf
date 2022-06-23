# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0"
    }
  }
  # Terraform State Storage to Azure Storage Container
  backend "azurerm" {

    # resource_group_name   = "terraform-storage-rg"
    # storage_account_name  = "terraformstate201"
    # container_name        = "tfstatefiles"
    # key                   = "terraform.tfstate"

    resource_group_name  = "storage-rg"
    storage_account_name = "tfstatetrial"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"

  }
}

# Provider Block
provider "azurerm" {
  features {}
}

# Random String Resource
resource "random_string" "myrandom" {
  length  = 6
  upper   = false
  special = false
  numeric = false
}