
# Datasources
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group
data "azurerm_resource_group" "rgds" {
  name = azurerm_resource_group.myrg.name
  #depends_on = [ azurerm_resource_group.myrg ]
  #name = local.rg_name
}

data "azurerm_virtual_network" "vnetds" {
  name                = azurerm_virtual_network.myvnet.name
  resource_group_name = azurerm_resource_group.myrg.name
}
