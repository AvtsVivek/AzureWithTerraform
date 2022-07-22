# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrgtoset" {
  for_each = toset(["centralindia", "westindia", "southindia"])
  name     = "vivek-${each.value}-toset-rg"
  location = each.key
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