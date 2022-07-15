
cd iac\2150300-null-resource-provisioner-trigger

cd ..\..

terraform init

terraform fmt # formats the tf files.

terraform validate

# First ensure that the resources are deleted, if there are any.

terraform plan -destroy -out main.destroy.tfplan

terraform apply main.destroy.tfplan

# Now we can plan and apply the resources.
terraform plan -out main.tfplan

terraform show main.tfplan

# Apply the plan. 
# Then open provisioner-output.txt inside of local-exec-output-files folder and look at the time. Note the time.
terraform apply main.tfplan


# Do this once again. Review the plan. 
# It will say, null_resource.null_resource_simple must be replaced 
# Contrast this with earlier example(2150200-null-resource-provisioner), the case when trigger is not present.
terraform plan -out main.tfplan

# Apply the plan. Then open provisioner-output.txt inside of local-exec-output-files folder and look at the time.
# Note the time. This time, the time should be different.
# Contrast this with earlier example(2150200-null-resource-provisioner), the case when trigger is not present.
terraform apply main.tfplan

# Yet again.
# It will say, null_resource.null_resource_simple must be replaced 
terraform plan -out main.tfplan

# Apply the plan. Then open provisioner-output.txt inside of local-exec-output-files folder and look at the time.
terraform apply main.tfplan

# Summary
# triggers (Map of String) A map of arbitrary strings that, when changed, will force the null resource to be replaced, re-running any associated provisioners.
# So the each time when you plan and apply, the null resource will be triggered.

terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
# The following command is not working.
terraform state show null_resource.null_resource_simple

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan