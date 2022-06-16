# Resource-1: Azure Resource Group
# dc - data center
resource "azurerm_resource_group" "myrgmap" {
  for_each = var.data_center_location
  name     = "vivek-${each.key}-map-rg"
  location = each.value
}
