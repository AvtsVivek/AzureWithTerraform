# Terraform settings Block
# This demonistrates random_string and random_id

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

output "resource_code" {
  value = random_string.resource_code.result
}

resource "random_id" "my_id" {
  byte_length = 8
}

# full object
output "my_id" {
  value = random_id.my_id
}