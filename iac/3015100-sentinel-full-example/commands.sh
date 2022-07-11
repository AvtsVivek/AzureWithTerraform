
cd .\iac\3005100-sentinel-full-example

cd .\terraform-manifests\

cd ..\..

terraform fmt

terraform logout

terraform login

terraform init

# Run the following in gitbash.
# Give the name terraform-azure for key file

cd terraform-manifests/ssh-keys-tf-cloud

ssh-keygen

terraform validate

# The following will not work.
# It will fail with the following error.
# ╷
# │ Error: Saving a generated plan is currently not supported
# │
# │ The "remote" backend does not support saving the generated execution plan locally at this time.
# ╵

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