# create virtual network
resource "azurerm_virtual_network" "myvnet" {
  name = "${azurerm_resource_group.myrg.name}-${var.vnet-name}"
  #address_space = var.virtual_network_address_space
  address_space       = [var.virtual_network_address_space[0]]
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
}
