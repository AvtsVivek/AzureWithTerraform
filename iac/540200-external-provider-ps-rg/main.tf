# # Terraform Block
# terraform {
#   required_version = ">= 1.0.0"
#   required_providers {
#     azurerm = {
#       source = "hashicorp/azurerm"
#       version = ">= 3.0" 
#     }
#     external = {
#       source = "hashicorp/external"
#       version = ">= 2.0"
#     }       
#   }
# }

provider "azurerm" {
  features {}
}

variable "application_name" {
  description = "The name of application"
}

variable "environment_name" {
  description = "The name of environment"
}

variable "country_code" {
  description = "The country code (FR-US-...)"
}

locals {
  resource_name = "${var.application_name}-${var.environment_name}-${var.country_code}"
}

resource "azurerm_resource_group" "rg" {
  name     = "RG-${local.resource_name}"
  location = data.external.getlocation.result.location
}


data "external" "getlocation" {
  # may be we should use path.module like this.
  # program = ["Powershell.exe", "${path.module}/ps-script/GetLocation.ps1"]
  program = ["Powershell.exe", "./ps-scripts/GetLocation.ps1"]

  query = {
    environment = "${var.environment_name}"
  }
}

output "locationname" {
  value = data.external.getlocation.result.location
}