terraform {
  required_version = ">= 0.14.0"
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
  # provisioner "local-exec" {
  #   command = "echo ${each.key} ${each.value.name1} ${each.value.name2}"
  # }
}

output "SomeOutputVar" {
  value = null_resource.null_resource_simple
}