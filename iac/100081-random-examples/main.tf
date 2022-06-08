# Terraform settings Block
# This demonistrates random_pet appart from random_string and random_id

terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

resource "random_string" "resource_code" {
  length  = 5
  special = true
  upper   = true
}

resource "random_id" "my_id" {
  byte_length = 8
}

resource "random_pet" "rg-name" {
  prefix = var.resource_group_name_prefix
}

output "resource_code" {
  value = random_string.resource_code.result
}

output "my_id" {
    value = random_id.my_id
}

output "random_pet_output_id" {
  value = random_pet.rg-name.id
}

output "random_pet_output" {
  value = random_pet.rg-name
}

variable "resource_group_name_prefix" {
  default     = "vivek"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

