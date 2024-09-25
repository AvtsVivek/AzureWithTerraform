# terraform {
#   # backend "azurerm" {
#   #   resource_group_name   = "terraform"
#   #   storage_account_name  = "terraform007"
#   #   container_name        = "tfstate"
#   #   key                   = "dev.terraform.tfstate"
#   # }
# }

# provider "azurerm" {
#   subscription_id = d79bcf7e-6d41-4345-b58d-988bf1bed581
#   location  = var.location
# }

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
}

# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "=2.46.0"
#     }
#   }
# }

provider "azurerm" {
  features {}
}

module "AppRegistration" {
  source  = "./modules/AppRegistration" #A
  appname = var.appname                 #B  
}