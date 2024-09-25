
resource "azurerm_resource_group" "myrg" {
  for_each = var.environment
  name     = "myrg-${each.key}-${var.resoure_group_name_suffix}"
  location = var.resoure_group_location
}