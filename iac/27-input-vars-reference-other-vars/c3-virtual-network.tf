# Create Virtual Network
resource "azurerm_virtual_network" "myvnet" {
  name                = "${azurerm_resource_group.myrg.name}-${var.vnet-name}"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
}
