# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrg" {
  count    = 3
  name     = "vivek-${count.index}-rg"
  location = var.resource_group_location
}

# domain_name_label = "app1-vm-${count.index}-${random_string.myrandom.id}"

resource "azurerm_resource_group" "myrg2" {
  count    = 3
  name     = "vivek-${random_string.myrandom.id}-${count.index}-rg"
  location = var.resource_group_location
}