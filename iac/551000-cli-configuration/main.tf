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

variable "environment_name" {
  description = "The name of environment"
}

data "external" "getlocation" {
  # may be we should use path.module like this.
  # program = ["Powershell.exe", "${path.module}/ps-script/GetLocation.ps1"]
  program = ["Powershell.exe", "./ps-script/GetLocation.ps1"]

  query = {
    environment = "${var.environment_name}"
    arg1         = "arg1"
    arg2         = "arg2"
  }
}

output "locationname" {
  value = data.external.getlocation.result.location
}

output "envname" {
  value = data.external.getlocation.result.environment
}

output "arg1" {
  value = data.external.getlocation.result.arg1
}
