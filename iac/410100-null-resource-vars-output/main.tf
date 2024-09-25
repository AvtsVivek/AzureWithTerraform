terraform {
  required_version = ">= 0.14.0"
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = " >= 3.1.1"
    }
  }
}

provider "null" {
  # Configuration options
}

variable "some_var" {
  default = {
    item1 = {
      name1 = "item1value1"
      name2 = "item1value2"
    }
    item2 = {
      name1 = "item2value1"
      name2 = "item2value2"
    }
  }
}

resource "null_resource" "null_resource_simple" {
  for_each = var.some_var
}

output "SomeOutputVar" {
  value = null_resource.null_resource_simple
}