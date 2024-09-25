
cd iac\540200-external-provider-ps-rg

cd ..\..

cd ..

'{"key_name": "terraformdemo", "key_environment": "dev"}' | .shell-script/ssh_key_generator.sh

cd shell-scripts

# bash ./shell-scripts/simple.sh '{"key_name": "terraformdemo", "key_environment": "dev"}'
# 
# bash ./shell-scripts/simple.sh
# 
# bash ./shell-scripts/ssh_key_generator.sh
# 
# sh ./shell-script/ssh_key_generator.sh
# 
# ./shell-script/simple.sh 

terraform fmt

terraform init

terraform validate

Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process

terraform plan -var "environment_name=Dev" -out main.tfplan

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