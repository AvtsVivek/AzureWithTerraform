
cd iac/561000-provider-management

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

# The terraform providers mirror command downloads the providers required for the current configuration and copies them into a directory in the local filesystem.
# This part of explicit installation method configuration, when you can specify from where the get the provider bits

New-Item -Path '.\MirrorFolder' -ItemType Directory

terraform provider mirror 

terraform providers mirror ./MirrorFolder

rm -r -fo ./MirrorFolder

# Schema 

# The `terraform providers schema` command is used to **print detailed schemas** for the providers used in the current configuration.

# Ensure to Terraform Initialize (Ensure terraform working directory is initialized before schema command)
terraform init

# Terraform Providers Schema
terraform providers schema -json | jq

rm -r -fo .terraform/modules

Remove-Item -Recurse -Force .terraform/modules

Remove-Item -Recurse -Force .terraform

Remove-Item terraform.tfstate

Remove-Item terraform.tfstate.backup

Remove-Item main.tfplan

Remove-Item main.destroy.tfplan

Remove-Item .terraform.lock.hcl


