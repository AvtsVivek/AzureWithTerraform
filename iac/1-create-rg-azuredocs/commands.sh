
cd iac\1-create-rg-azuredocs

terraform init

terraform fmt

terraform validate

terraform plan -out main.tfplan

terraform apply main.tfplan

terraform plan -destroy -out main.destroy.tfplan

terraform apply main.destroy.tfplan
