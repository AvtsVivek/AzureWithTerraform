
cd iac\1900500-create-rg-taint-untaint

cd ..\..

terraform fmt

terraform init

terraform validate

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform state show azurerm_resource_group.rg

terraform taint azurerm_resource_group.rg

terraform plan -out main.tfplan

terraform apply main.tfplan

terraform show terraform.tfstate

terraform untaint azurerm_resource_group.rg

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan
