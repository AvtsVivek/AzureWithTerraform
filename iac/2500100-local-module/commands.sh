
cd iac\2500100-local-module

cd ..\..

terraform fmt

terraform init

terraform validate

terraform plan -out main.tfplan

terraform apply main.tfplan

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan

# Now understanding the get command.

# First delete the modules folder

rm -r -fo .terraform/modules

Remove-Item -Recurse -Force .terraform/modules

# terraform get downloads only the modules that are not already downloaded.
terraform get