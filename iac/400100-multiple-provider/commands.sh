cd iac\400100-multiple-provider

terraform fmt

terraform init

terraform validate

# terraform plan -var resource_group_name=vnet-main -out vnet.tfplan
terraform plan -out vnet.tfplan

terraform show main.tfplan

terraform apply vnet.tfplan

terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform state show 

#terraform plan -var resource_group_name=vnet-main -destroy -out vnet.destroy.tfplan

terraform plan -destroy -out vnet.destroy.tfplan

terraform apply vnet.destroy.tfplan
