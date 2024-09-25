
# Resource-1: Azure Resource Group

resource "azurerm_resource_group" "myrg" {
  # name=var.resoure_group_name
  name     = var.resoure_group_name != "" ? var.resoure_group_name : "conditional-rg"
  location = var.resoure_group_location
}