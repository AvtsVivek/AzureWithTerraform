
resource "azurerm_resource_group" "myrg" {
  # name     = "myrg-${each.key}-${var.resoure_group_name_suffix}"
  name     = local.rg_name
  location = local.rg_location
}