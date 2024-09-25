
cd iac\3101100-nsg-with-dynamic-block

cd ..\..

terraform fmt

terraform init

# terraform plan -var resource_group_name=vnet-main -out vnet.tfplan

terraform plan -out nsg.tfplan

terraform apply nsg.tfplan

terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform state show 

terraform state show azurerm_resource_group.myrg

terraform plan -destroy -out nsg.destroy.tfplan

terraform apply nsg.destroy.tfplan

rm -r -fo .terraform/modules

Remove-Item -Recurse -Force .terraform/modules

Remove-Item -Recurse -Force .terraform

Remove-Item terraform.tfstate

Remove-Item terraform.tfstate.backup

Remove-Item nsg.tfplan

Remove-Item nsg.destroy.tfplan

Remove-Item .terraform.lock.hcl
