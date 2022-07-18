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

# Not very clear how to output all of the resource groups that are created.
# The following is not working.

# output "name_of_resource_group" {
#   value = azurerm_resource_group.myrg[*].name
# }
