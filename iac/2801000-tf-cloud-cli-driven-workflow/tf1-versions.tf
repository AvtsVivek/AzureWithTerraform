# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }

  # Update Terraform Cloud Backend Block Information below
  backend "remote" {
    organization = "vivek-hcta-azure-demo1"
    workspaces {
      name = "cli-driven-terraform-azure-demo"
    }
    # hostname = "value"  # defaults to app.terraform.io but for Enterprise customers it is going to be where you hosted TF Cloud related binary
    # token = "value" # Hard Code TF Cloud Token - Not recommended use from TF CLI only 
  }

}

# terraform {
#   cloud {
#     organization = "vivek-hcta-azure-demo1"

#     workspaces {
#       name = "cli-driven-terraform-azure-demo"
#     }
#   }
# }

# Provider Block
provider "azurerm" {
  features {}
}

# terraform {
#   cloud {
#     organization = "vivek-hcta-azure-demo1"

#     workspaces {
#       name = "cli-driven-terraform-azure-demo"
#     }
#   }
# }
