# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrg" {
  name     = "vivek-vnet-rg"
  location = var.resource_group_location
}