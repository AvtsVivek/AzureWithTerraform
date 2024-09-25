
cd iac\491000-migrate-state-to-tf-cloud-rg

cd ..\..

# If there is a backend blcock, comment it.

#   backend "remote" {
#     organization = "vivek-hcta-azure-demo1"
#     workspaces {
#       name = "cli-driven-migrate-tfstate-to-tfcloud-demo"
#     }
#   }

terraform fmt

terraform init

terraform validate

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

# Ensure that the resource is created on Azure. Also take note of the TF state file.
terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform state show 

# The following should work.
terraform state show azurerm_resource_group.rg

terraform show terraform.tfstate

# Ensure that a workspace is created on Terraform cloud. 
# If workspace is not created, then terraform will create it, if you have the backend block in the tf file. See below for the backend block.
# Ofcourse, the organization name must be created before hand.

# Ensure the organization is vivek-hcta-azure-demo1 and workspace is cli-driven-migrate-tfstate-to-tfcloud-demo.
# Also ensure environment variables are set. See the ReadMe.md file.
# Also ensure that there are no tfstate files in that workspace.
# Then ensure the following block is added to the terraform block in the .tf file.

#   backend "remote" {
#     organization = "vivek-hcta-azure-demo1"
#     workspaces {
#       name = "cli-driven-migrate-tfstate-to-tfcloud-demo"
#     }
#   }


# Terraorm do loging

terraform logout

terraform login

# Now do terraform init.
# This will migrate the state from the local backend to the workspace on the Terraform cloud.

terraform init

# Now verify the state is created on terraform cloud.

terraform state list

# Now delete the local tfstate file. May be create a back up and then delete it.

terraform init

# Now verify the state is present on terraform cloud.

terraform state list

# Now do terraform state file migration is complete.
# You can verify, by adding a new resource such as resource group to the terraform configuration in the .tf file.
# Then do terraform plan and apply.
# You will get a new resource group created on Azure.
# You can also verify the state is present on tf cloud by running the following command.
# terraform state list


# The following command will not work. It will fail with the following error:
# Error: Saving a generated plan is currently not supported
# │
# │ The "remote" backend does not support saving the generated execution plan locally at this time.

terraform plan -destroy -out main.destroy.tfplan

# So just run the following.
terraform plan -destroy 

# The following command will not work. It will fail.
terraform apply main.destroy.tfplan

# So run this.
terraform apply -destroy

terraform state show 

# terraform show terraform.tfstate
