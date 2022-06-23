resource "azurerm_storage_account" "storage-for-tfstate" {
  name                     = "tfstatetrial"
  resource_group_name      = azurerm_resource_group.myrg.name
  location                 = azurerm_resource_group.myrg.location
  account_tier             = "Standard"
  account_replication_type = "RAGRS"

  tags = {
    environment = "staging"
  }

  blob_properties {
    versioning_enabled = true
  }
}

resource "azurerm_storage_container" "containerfortfstate" {
  name                  = "tfstatefiles"
  storage_account_name  = azurerm_storage_account.storage-for-tfstate.name
  container_access_type = "private"
}