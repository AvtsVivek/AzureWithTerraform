# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrg" {
  # name = "${var.business_unit}-${var.environment}-${var.resoure_group_name}"
  name     = "simple-rg"    # local.rg_name
  location = "centralindia" #var.resoure_group_location
  # tags = local.common_tags
}

output "output_temp" {
  value = "here is the output"
}

output "resource_group_name" {
  value = azurerm_resource_group.myrg.name
}