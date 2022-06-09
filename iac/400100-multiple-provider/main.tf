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

# This is the default provider, this has no alias.
provider "azurerm" {
  features {}
  #location="centralindia"
}

# Provider-2 for WestUS
provider "azurerm" {
  features {
    virtual_machine {
      delete_os_disk_on_deletion = false # this will ensure when the virtual machine is destroyed, disk is not deleted, default is true and we can alter it at provider level
    }
  }
  alias = "provider-for-westindia"
  #client_id = "XXXX"
  #client_secret = "YYY"
  #environment = "german"
  #subscription_id = "JJJJ"
}

#############################################################################
# RESOURCES
#############################################################################

# Multiple providers allows us to define multiple configurations for the same provider,
# and select which one to use on a per-resource or per-module basis. # Slide 75, 76
# The primary reason for this is to support multiple regions for a cloud platform
# In the above, we have two providers. But both of them are configured differently. 
# Now when we create resources, can use explicitly sapecify the provier. 

# Create a resource group in EastUS region - Uses Default Provider
# Here we are not specifying the provider, so this resource creation takes place
# using the default provider. The default provider is the one which has no alias.
resource "azurerm_resource_group" "myrg1" {
  name     = "vivek-1-rg"
  location = "centralindia"
}

# Create a resource group in WestUS region - Uses "provider2-westus" provider
# Here I am specifying the provider explicitly using the alias.
resource "azurerm_resource_group" "myrg2" {
  name     = "vivek-2-rg"
  location = "westindia"
  provider = azurerm.provider-for-westindia
  # here, provider is a meta argument.
}


/*
Additional Note: 
provider = <PROVIDER NAME>.<ALIAS NAME>  # This is a Meta-Argument from Resources Section nothing but a Special Argument
*/
