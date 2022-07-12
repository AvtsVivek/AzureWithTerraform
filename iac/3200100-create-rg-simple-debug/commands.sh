
cd iac\3200100-create-rg-simple-debug

cd ..\..

# Create Environment Variable for debugging.
# With powershell, you can use the following.
$env:TF_LOG='TRACE'
$env:TF_LOG_PATH="terraform-trace.log"

# Verify
$env:TF_LOG
$env:TF_LOG_PATH

terraform fmt

terraform init

terraform validate

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform state show 

terraform show terraform.tfstate

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan

rm -r -fo .terraform/modules

Remove-Item -Recurse -Force .terraform/modules

Remove-Item -Recurse -Force .terraform

Remove-Item terraform.tfstate

Remove-Item terraform.tfstate.backup

Remove-Item main.tfplan

Remove-Item main.destroy.tfplan

Remove-Item .terraform.lock.hcl

Remove-Item *.log
