variable "some_prop" {
  type = map(string)
}

resource "azurerm_resource_group" "myrg" {
  for_each = var.some_prop
  # name     = var.resource_group_name 
  name     = "var.resource_group_name-${each.value}-${var.resource_group_count_var}" # "vivek-${each.value}-toset-rg"
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