
cd .\iac\3401300-external-provider-vm

cd .\terraform-manifests\

cd ..\..

terraform fmt

terraform logout

terraform login

terraform init

terraform validate

terraform plan -out main.tfplan

terraform plan 

terraform apply main.tfplan

# The following does not work
terraform plan -destroy -out main.destroy.tfplan

# So run this.
terraform plan -destroy

# The following does not work
terraform show main.destroy.tfplan

# The following does not work
terraform apply main.destroy.tfplan

# So run this.
terraform apply --destroy

# Now understanding the get command.

# First delete the modules folder

rm -r -fo .terraform/modules

Remove-Item -Recurse -Force .terraform/modules

Remove-Item -Recurse -Force .terraform

Remove-Item terraform.tfstate

Remove-Item terraform.tfstate.backup

Remove-Item main.tfplan

Remove-Item main.destroy.tfplan

Remove-Item .terraform.lock.hcl


# terraform get downloads only the modules that are not already downloaded.
terraform get


# Run the following command ni git bash command prompt. 
# Running this on powershell prompt will not work.
cd iac/3401200-external-provider-bash-ssh-keygen/

cd ../..

cd ..

terraform fmt

terraform init

terraform validate

terraform plan

terraform apply -auto-approve

terraform plan --destroy

# Ensure you are in bash prompt.
cd iac/3401200-external-provider-bash-exmpl/
echo '{"key_name": "terraformdemo", "key_environment": "dev"}' | ./script-dir/ssh-key-gen.sh