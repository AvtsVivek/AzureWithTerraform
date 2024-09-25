
cd .\iac\460100-terraform-cloud

cd .\terraform-manifests\

cd ..\..

terraform fmt

terraform init

# Run the following in gitbash.
# Give the name terraform-azure for key file

cd terraform-manifests/ssh-keys-tf-cloud

ssh-keygen

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

Remove-Item -Recurse -Force .terraform

Remove-Item terraform.tfstate

Remove-Item terraform.tfstate.backup

Remove-Item main.tfplan

Remove-Item main.destroy.tfplan

Remove-Item .terraform.lock.hcl


# terraform get downloads only the modules that are not already downloaded.
terraform get