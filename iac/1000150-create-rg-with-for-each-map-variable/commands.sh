
cd iac\1000150-create-rg-with-for-each-map-variable

terraform fmt

terraform init

terraform validate

terraform plan -out main.tfplan

terraform apply main.tfplan

# Once created, go to the portal, ensure the resource groups are created
terraform plan -destroy -out main.destroy.tfplan

terraform apply main.destroy.tfplan

