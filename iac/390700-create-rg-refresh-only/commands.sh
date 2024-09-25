
cd iac\1900700-create-rg-refresh-only

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
terraform state show 

terraform show terraform.tfstate

# Now verify the resource has been created. Then add one more tag to the resource.
# Then run the following command to see the state.
terraform show terraform.tfstate

# Execute terraform plan -refresh-only
terraform plan -refresh-only -out main.tfplan 

terraform show main.tfplan

# Execute terraform apply -refresh-only
terraform apply -refresh-only main.tfplan 

# Now verify the state again.
terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform state show azurerm_resource_group.rg_one

terraform show terraform.tfstate

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan
