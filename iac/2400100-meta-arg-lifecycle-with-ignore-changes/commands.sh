
cd iac\24-meta-arg-lifecycle-with-ignore-changes

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

terraform apply main.tfplan

# Ensure the resource is created on the portal.
# Look for the tags created by terraform.
# Now manually add one more tag to the virtual network resource form the portal. WebServer = Apache
# Ensure that lifecycle.ingore_changes is now set for the virtual network resource. See the file c3-virtual-network.tf
# Run the plan again.
terraform plan -out main.tfplan
# Now care fully observe the output.
# Now terraform will detected that on the remote portal, there are some changes made which are not tracked by terrafomr. But we told terraform to ignore them.
# No changes. Your infrastructure matches the configuration.
# If suppose, you make some changes to the terraform resource(in the file c3-virtual-network.tf), like adding more tags, then terraform will say something like
# # Plan: 1 to add, 0 to change, 0 to destroy.
terraform apply main.tfplan
# Go back to the portal, the tag you had added manually from the portal are not removed and are in tact.
# in the output you will see
# Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

terraform plan -destroy -out main.destroy.tfplan

terraform apply main.destroy.tfplan
