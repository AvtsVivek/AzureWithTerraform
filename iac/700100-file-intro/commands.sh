
cd iac\700100-file-intro

terraform fmt

terraform init

terraform validate

terraform plan -out main.tfplan

terraform apply main.tfplan

terraform plan -destroy -out main.destroy.tfplan

terraform apply main.destroy.tfplan

