cd iac\4-multiple-provider

terraform fmt

terraform init

terraform validate

# terraform plan -var resource_group_name=vnet-main -out vnet.tfplan
terraform plan -out vnet.tfplan

terraform apply vnet.tfplan

#terraform plan -var resource_group_name=vnet-main -destroy -out vnet.destroy.tfplan

terraform plan -destroy -out vnet.destroy.tfplan

terraform apply vnet.destroy.tfplan
