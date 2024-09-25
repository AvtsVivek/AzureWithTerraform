
cd iac/1900200-create-rg-mv-statefile

cd ..\..

terraform fmt

terraform init

terraform validate

terraform plan -out main.tfplan

terraform show main.tfplan

terraform show -json main.tfplan 

# Jq is needed to be installe for the following command to work.

terraform show -json main.tfplan | jq

terraform apply main.tfplan

terraform state list

terraform state show azurerm_resource_group.rg

# This only changes the state file.
terraform state mv --dry-run azurerm_resource_group.rg azurerm_resource_group.rg_new

terraform state mv azurerm_resource_group.rg azurerm_resource_group.rg_new

terraform state list

terraform state show azurerm_resource_group.rg

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan
