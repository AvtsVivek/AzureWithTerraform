# Create Virtual Network
resource "azurerm_virtual_network" "myvnet1" {
  name                = "${var.virtual_network_name}1"
  address_space       = ["10.1.0.0/16"]
  location            = local.rg_location
  resource_group_name = local.rg_name
}

resource "azurerm_virtual_network" "myvnet2" {
  name                = "${var.virtual_network_name}2"
  address_space       = ["10.2.0.0/16"]
  location            = local.rg_location
  resource_group_name = local.rg_name
}

resource "azurerm_virtual_network" "myvne3" {
  name                = "${var.virtual_network_name}3"
  address_space       = ["10.3.0.0/16"]
  location            = local.rg_location
  resource_group_name = local.rg_name
}



