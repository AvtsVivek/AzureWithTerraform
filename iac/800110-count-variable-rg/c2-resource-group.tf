# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrg" {
  count    = var.count_rg
  name     = "vivek-${count.index}-rg"
  location = var.resource_group_location
}
