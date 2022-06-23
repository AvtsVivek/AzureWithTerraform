# Create Virtual Network
resource "azurerm_virtual_network" "myvnet" {
  name          = local.vnet_name
  address_space = ["10.0.0.0/16"]
  # data.terraform_remote_state.project1
  resource_group_name = data.terraform_remote_state.project1.outputs.resource_group_name
  location            = data.terraform_remote_state.project1.outputs.resource_group_location
  tags                = local.common_tags
}

