
cd iac\441200-module-full-example

cd ..\..

cd ..\..\..

terraform fmt

terraform init

terraform validate

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform state show azurerm_linux_virtual_machine.mylinuxvm

terraform show terraform.tfstate

# Verify that the resource azurerm_linux_virtual_machine.mylinuxvm is created

terraform taint module.vnet.azurerm_subnet.subnet[2]

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan

