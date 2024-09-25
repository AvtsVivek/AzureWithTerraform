
cd iac\480100-tf-cloud-cli-driven-workflow-rg

cd ..\..

terraform fmt

terraform init

terraform logout

# Login and get the token
terraform login

terraform init

# The following command will not work. It will fail with the following error:
# Error: Saving a generated plan is currently not supported
# │
# │ The "remote" backend does not support saving the generated execution plan locally at this time.
# terraform validate
terraform plan -out main.tfplan

# So use the following command instead, without the -out option
terraform plan 

# The followinbg also will not work.
terraform apply main.tfplan

# So simply run the following command instead
terraform apply

# The following command will not work. It will fail:
terraform plan -destroy -out main.destroy.tfplan

# So use the following command instead, without the -out option

terraform plan -destroy 

# The following will not work.
terraform show main.destroy.tfplan

# The following will not work.
terraform apply main.destroy.tfplan

# The following should work.
terraform apply -destroy
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