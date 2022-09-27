

# Datasources
# https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/client_config

data "azuread_client_config" "current" {}

output "object_id" {
  value = data.azuread_client_config.current.object_id
}

output "client_id" {
  value = data.azuread_client_config.current.client_id
}

output "tenant_id" {
  value = data.azuread_client_config.current.tenant_id
}