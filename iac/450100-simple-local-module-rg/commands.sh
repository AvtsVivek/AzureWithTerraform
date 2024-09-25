
cd iac\450100-simple-local-module-rg

cd ..\..

cd ..\..\..

code . -r

terraform fmt

terraform init

terraform validate

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform state show module.azure_resource_group_vivek_rg.azurerm_resource_group.rg

terraform show terraform.tfstate

# Verify that the resource azurerm_linux_virtual_machine.mylinuxvm is created

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan

