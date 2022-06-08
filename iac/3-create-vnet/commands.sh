
cd iac\3-create-vnet

terraform fmt

terraform init

# terraform plan -var resource_group_name=vnet-main -out vnet.tfplan

terraform plan -out vnet.tfplan

terraform apply vnet.tfplan

#terraform plan -var resource_group_name=vnet-main -destroy -out vnet.destroy.tfplan

terraform plan -destroy -out vnet.destroy.tfplan

terraform apply vnet.destroy.tfplan
