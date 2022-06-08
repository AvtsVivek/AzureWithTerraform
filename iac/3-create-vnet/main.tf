#############################################################################
# TERRAFORM CONFIG
#############################################################################
# Terraform settings Block
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
  }
}

#############################################################################
# PROVIDERS
#############################################################################

provider "azurerm" {
  features {}
}

#############################################################################
# RESOURCES
#############################################################################

resource "azurerm_resource_group" "main_rg" {
  name     = var.resource_group_name
  location = var.location
}

module "vnet-main" {
  # https://registry.terraform.io/modules/Azure/vnet/azurerm/latest
  source              = "Azure/vnet/azurerm"
  version             = "~> 2.0"
  resource_group_name = azurerm_resource_group.main_rg.name
  vnet_name           = var.vnet_name
  address_space       = [var.vnet_cidr_range]
  subnet_prefixes     = var.subnet_prefixes
  subnet_names        = var.subnet_names
  nsg_ids             = {}

  tags = {
    environment = "dev"
    costcenter  = "it"

  }

  depends_on = [azurerm_resource_group.main_rg]
}

#############################################################################
# OUTPUTS
#############################################################################

output "vnet_id" {
  value = module.vnet-main.vnet_id
}
