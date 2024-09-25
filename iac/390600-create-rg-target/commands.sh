
cd iac\390600-create-rg-target

cd ..\..

terraform fmt

terraform init

terraform validate

terraform plan -out main.tfplan 

terraform plan -target="azurerm_resource_group.rg_one" -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform state show 

terraform show terraform.tfstate

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan
