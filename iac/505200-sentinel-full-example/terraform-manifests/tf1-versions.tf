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

  cloud {
    organization = "vivek-hcta-azure-demo1"
    workspaces {
      name = "sentinal-azure-demo1"
    }
    # hostname = "value"  # defaults to app.terraform.io but for Enterprise customers it is going to be where you hosted TF Cloud related binary
    # token = "value" # Hard Code TF Cloud Token - Not recommended use from TF CLI only 
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


