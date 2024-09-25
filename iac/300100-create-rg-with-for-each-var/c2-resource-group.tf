# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrgtoset" {
  for_each = var.env
  name     = "vivek-${each.key}-rg"
  location = "westindia"
  tags = {
    environment = "${each.key}"
    ip          = "${each.value.ip}"
    az          = "${each.value.az}"
  }
}


variable "env" {
  type = map(any)
  default = {
    prod = {
      ip = "10.0.150.0/24"
      az = "us-east-1a"
    }
    dev = {
      ip = "10.0.250.0/24"
      az = "us-east-1e"
    }
  }
}

/* 
we can also use each.value as each.key = each.value 
in this case  
*/

output "instance_ids" {
  value = tomap({
    for k, inst in azurerm_resource_group.myrgtoset : k => inst.id
  })
}

output "instance_names" {
  value = tomap({
    for k, inst in azurerm_resource_group.myrgtoset : k => inst.name
  })
}


variable "resource-group-locations" {
  default = ["apple", "banana", "pine apple", "grape", "strawberry"]
}