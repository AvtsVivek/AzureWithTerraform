# Provider Block
provider "azurerm" {
  features {}
}

# Random String Resource
resource "random_string" "myrandom" {
  length  = 6
  upper   = false
  special = false
  numeric = false
}

# Create Resource Group
resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

# Create Azure Storage account
resource "azurerm_storage_account" "storage_account" {
  name                = "${var.storage_account_name}${random_string.myrandom.id}"
  resource_group_name = azurerm_resource_group.resource_group.name

  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  account_kind             = var.storage_account_kind

  static_website {
    index_document     = var.static_website_index_document
    error_404_document = var.static_website_error_404_document
  }
}

# resource "azurerm_storage_blob" "index_html" {
#   name                   = "index.html"
#   storage_account_name   = azurerm_storage_account.storage_account.name
#   storage_container_name = "$web"
#   type                   = "Block"
#   content_type           = "text/html"
#   source                 = "index.html"
# }

# resource "azurerm_storage_blob" "error_html" {
#   name                   = "error.html"
#   storage_account_name   = azurerm_storage_account.storage_account.name
#   storage_container_name = "$web"
#   type                   = "Block"
#   content_type           = "text/html"
#   source                 = "error.html"
# }

resource "azurerm_storage_blob" "static_files_html" {

  for_each               = toset(var.static_files_list)
  name                   = each.value
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  source                 = each.value

  depends_on = [
    azurerm_resource_group.resource_group,
    azurerm_storage_account.storage_account
  ]

}



