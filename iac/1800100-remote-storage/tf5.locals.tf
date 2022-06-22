locals {
  # Use-case-1: Shorten the names for more readability
  # rg_name = "${var.business_unit}-${var.environment}-${var.resoure_group_name}"
  resource_group_name = azurerm_resource_group.myrg.name
}