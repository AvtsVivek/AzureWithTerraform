
cd iac/3601000-provider-management

cd ../..

cd ..

cd ./terraform-manifests

terraform fmt

terraform providers

# Delete the hcl file and .terraform folder
terraform version

terraform init

# Run the followng again.
terraform version
# Now note the difference.

# terraform providers lock
terraform providers lock
# This will only fetch the information and store it in the .terraform.lock.hcl file.
# It will not download the providers.


# Terraform Providers lock for all os systems.
# This must be done before init for enterprise senarios.
terraform providers lock -platform=windows_amd64 -platform=darwin_amd64 -platform=linux_amd64

rm -r -fo .terraform/modules

Remove-Item -Recurse -Force .terraform/modules

Remove-Item -Recurse -Force .terraform

Remove-Item terraform.tfstate

Remove-Item terraform.tfstate.backup

Remove-Item main.tfplan

Remove-Item main.destroy.tfplan

Remove-Item .terraform.lock.hcl


