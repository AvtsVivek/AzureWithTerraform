cd iac/571000-data-azurerm-client-config

cd ../..

cd ..

terraform fmt

terraform init

terraform validate

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan 

terraform state list