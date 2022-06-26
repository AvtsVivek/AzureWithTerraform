
cd iac\1100400-meta-arg-lifecycle-without-ignore-changes

terraform fmt

# Ensure the virtual network resource has some tags added to it as follows

#   tags = {
#     "Name" = "VNET-1"
#     "Environment" = "Dev1"
#   }

terraform init

terraform validate

# Ensure that lifecycle.ingore_changes is NOT set for the virtual network resource. See the file c3-virtual-network.tf
terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform show 

# Ensure the resource is created on the portal.
# Look for the tags created by terraform.
# Now manually add one more tag to the virtual network resource form the portal. WebServer = Apache
# Ensure that lifecycle.ingore_changes is NOT set for the virtual network resource. See the file c3-virtual-network.tf
# Run the plan again.
terraform plan -out main.tfplan
# Now care fully observe the output.
# Now terraform will detected that on the remote portal, there are some changes made which are not tracked by terrafomr.
# Plan: 0 to add, 1 to change, 0 to destroy.

terraform apply main.tfplan
# Go back to the portal, the tag you had added manually from the portal is now removed. 
# This is the default behaviour. To change this, we need to add the life cycle ingore_chagnes.  

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan
