
cd iac\400300-create-rg-workspace

cd ..\..

terraform fmt

terraform init

terraform validate

terraform workspace list

terraform workspace show

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

terraform state list

terraform state show azurerm_resource_group.rg

terraform show terraform.tfstate

# Switch to a new workspace
terraform workspace new dev

# Now try to observe the state in the new workspace
terraform state list

terraform state show azurerm_resource_group.rg

terraform show terraform.tfstate

# Switch back to the original workspace
terraform workspace select default

terraform workspace list

# Now try to observe the state in the default workspace
terraform state list

terraform state show azurerm_resource_group.rg

terraform show terraform.tfstate

# Switch back to the dev workspace
terraform workspace select dev

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan

terraform workspace select default

terraform plan -destroy -out main.destroy.tfplan

terraform apply main.destroy.tfplan
