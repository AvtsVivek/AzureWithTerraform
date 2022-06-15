
cd iac\800110-count-variable-rg

terraform fmt

terraform init

terraform validate

terraform plan -out main.tfplan

terraform apply main.tfplan

terraform plan -destroy -out main.destroy.tfplan

terraform apply main.destroy.tfplan