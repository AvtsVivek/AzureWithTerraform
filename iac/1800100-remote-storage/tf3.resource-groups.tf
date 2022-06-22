
# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrg" {
  # name = "${var.business_unit}-${var.environment}-${var.resoure_group_name}"
  name     = "storage-rg"   # local.rg_name
  location = "centralindia" #var.resoure_group_location
  # tags = local.common_tags
}

