
# Azure MySQL Database Server
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mysql_server

resource "azurerm_mysql_server" "viveksqlserver" {
  name                = "${var.business_unit}-${var.environment}-${var.db_name}" # This needs to be globally unique within Azure.
  location            = azurerm_resource_group.vivekrg.location
  resource_group_name = azurerm_resource_group.vivekrg.name

  administrator_login          = var.db_username
  administrator_login_password = var.db_password

  sku_name   = "B_Gen5_2"
  storage_mb = var.db_storage_mb
  version    = "8.0"

  auto_grow_enabled                 = var.db_auto_grow_enabled
  backup_retention_days             = 7
  geo_redundant_backup_enabled      = false
  infrastructure_encryption_enabled = false
  public_network_access_enabled     = true
  
  # If you want to enable ssl use the following
  # ssl_enforcement_enabled           = true
  # ssl_minimal_tls_version_enforced  = "TLS1_2"

  # If you want to disable ssl use the following
  ssl_enforcement_enabled          = false
  ssl_minimal_tls_version_enforced = "TLSEnforcementDisabled"
  tags                             = var.common_tags
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

resource "azurerm_mysql_firewall_rule" "allow_azure_access" {
  # https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mysql_firewall_rule#example-usage-allow-access-to-azure-services
  name                = "Allow_access_to_Azure_services"
  resource_group_name = azurerm_resource_group.vivekrg.name
  server_name         = azurerm_mysql_server.viveksqlserver.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}