# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "vivekrg" {
  # name     = var.resource_group_name
  name     = "${var.business_unit}-${var.environment}-${var.resource_group_name}"
  location = var.resource_group_location
  tags     = var.common_tags
}



# This is not needed
#resource "azurerm_resource_group" "myrg2" {
#  name     = var.second_resource_group_name
#  location = var.second_resource_group_location
#}