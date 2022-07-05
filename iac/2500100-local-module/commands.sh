
cd iac\2500100-local-module

cd ..\..

terraform fmt

terraform init

terraform validate

terraform plan -out main.tfplan
