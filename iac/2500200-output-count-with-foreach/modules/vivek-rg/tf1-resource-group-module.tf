variable "some_prop" {
  type = map(string)
}

resource "azurerm_resource_group" "myrg" {
  for_each = var.some_prop
  name     = "var.resource_group_name-${each.key}-${each.value}-${var.resource_group_count_var}"
  location = var.resource_group_location
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "resource_group_location" {
  description = "The locaton of the resource group"
  type        = string
}

variable "resource_group_count_var" {
  description = "The count variable for the resource group"
  type        = number
}

output "resource_group_name_list" {
  value = [for vm in azurerm_resource_group.myrg: vm.name]
}

output "resource_group_name_id" {
  value = [for vm in azurerm_resource_group.myrg: vm.id]
}
