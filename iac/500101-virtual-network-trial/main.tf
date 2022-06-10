
# Terraform settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
  }
}

# Provider Block
provider "azurerm" {
  features {}
}

# create virtual network
resource "azurerm_virtual_network" "myvnet" {
  name                = "vivek-1-vnet"
  address_space       = ["10.0.0.0/16"] # This is a list, it has []. If it has { }, then its a map.
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
  tags = { # This is a map. This is {}
    "name" = "vivek-1-vnet"
  }
}

# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrg" {
  name     = "vivek-vnet-rg"
  location = var.resource_group_location
  tags = {
    "someTagKey" = "Here we go"
    "anotherTagKey" = "Here we go again"
  }
}


variable "resource_group_location" {
  default     = "centralindia"
  description = "Location of the resource group."
}
