# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrg" {
  count = var.count_rg
  # name   = "vivek-${count.index}-rg"
  name     = "vivek-${random_string.myrandom[count.index].id}-${count.index}-rg"
  location = var.resource_group_location
}

# Random String Resource
resource "random_string" "myrandom" {
  count   = var.count_rg
  length  = 6
  upper   = false
  special = false
  #number  = false
}
