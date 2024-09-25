
# Azure MySQL Database Server
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mysql_server

resource "azurerm_mysql_server" "viveksqlserver" {
  name                = "${var.business_unit}-${var.environment}-${var.db_name}" # This needs to be globally unique within Azure.
  location            = azurerm_resource_group.vivekrg.location
  resource_group_name = azurerm_resource_group.vivekrg.name

  administrator_login          = var.db_username
  administrator_login_password = var.db_password

  # sku_name   = "B_Gen5_2"
  sku_name   = "GP_Gen5_2" # General Purpose Tier
  storage_mb = var.db_storage_mb
  version    = "8.0"

  auto_grow_enabled                 = var.db_auto_grow_enabled
  backup_retention_days             = 7
  geo_redundant_backup_enabled      = false
  infrastructure_encryption_enabled = false
  public_network_access_enabled     = true
  ssl_enforcement_enabled           = true
  ssl_minimal_tls_version_enforced  = "TLS1_2"
  tags                              = var.common_tags

  threat_detection_policy {
    enabled              = var.tdpolicy.enabled
    retention_days       = var.tdpolicy.retention_days
    email_account_admins = var.tdpolicy.email_account_admins
    email_addresses      = var.tdpolicy.email_addresses
  }

}

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mysql_database
# Create Database inside Azure MySQL Database Server
resource "azurerm_mysql_database" "vivekmysqldb1" {
  name                = "vivekwebappdb1"
  resource_group_name = azurerm_resource_group.vivekrg.name
  server_name         = azurerm_mysql_server.viveksqlserver.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}

