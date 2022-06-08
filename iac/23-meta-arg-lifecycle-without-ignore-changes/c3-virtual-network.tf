# Create Virtual Network
resource "azurerm_virtual_network" "myvnet" {
  name                = var.vnet-name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name

  tags = {
    "Name"        = "VNET-1"
    "Environment" = "Dev1"
  }

  # Lifecycle Changes
  # lifecycle {
  #   prevent_destroy = true
  # }
}
