
cd iac\200-app-service-domain

terraform fmt

terraform init

terraform validate

terraform plan -out main.tfplan

terraform apply main.tfplan

terraform plan -destroy -out main.destroy.tfplan

terraform apply main.destroy.tfplan