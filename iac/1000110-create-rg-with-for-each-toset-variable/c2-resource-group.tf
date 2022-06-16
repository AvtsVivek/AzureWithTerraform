# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrgtoset" {
  for_each = toset(var.resource_group_locations)
  name     = "vivek-${each.value}-toset-rg"
  location = each.key
}

