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

output "remote_state_from_datasource" {
  value = data.terraform_remote_state.project1
}

output "here_is_the_sample_output" {
  value = "here is the output using remote state data source"
}

# remote_state_from_datasource

output "remote_state_from_datasource_outputs" {
  value = data.terraform_remote_state.project1.outputs
}

output "remote_state_from_datasource_backend" {
  value = data.terraform_remote_state.project1.backend
}

output "remote_state_from_datasource_config" {
  value = data.terraform_remote_state.project1.config
}

output "remote_state_from_datasource_defaults" {
  value = data.terraform_remote_state.project1.defaults
}

output "remote_state_from_datasource_workspace" {
  value = data.terraform_remote_state.project1.workspace
}

