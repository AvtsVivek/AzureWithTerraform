
cd iac\2200210-provisioner-null-resource-simple

cd ..\..

# Terraform follows, the following workflow.

# Init, Plan, Validate, Apply, and then Destroy

terraform init

terraform fmt # formats the tf files.

terraform validate

# First ensure that the resources are deleted, if there are any.

terraform plan -destroy -out main.destroy.tfplan

terraform apply main.destroy.tfplan

# Now we can plan and apply the resources.
terraform plan -out main.tfplan

terraform show main.tfplan

# Apply the plan. Then observe the Random string is generated. The string is .....
terraform apply main.tfplan

terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform state show null_resource.null_resource_simple

terraform state show null_resource.cluster

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan
