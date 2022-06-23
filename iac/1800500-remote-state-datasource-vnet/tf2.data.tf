# Terraform Remote State Datasource
data "terraform_remote_state" "project1" {
  backend = "azurerm"
  config = {
    resource_group_name  = "storage-rg"
    storage_account_name = "tfstatetrial"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
  }
}