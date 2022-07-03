

cd iac\2300100-import-simple-rg\import-resource

cd ..\..

cd ..\..\..

# Ensure the resource is created. 
# Next get the id of the resource from the portal.
# Go to the resource and click json view and copy the id.
# "/subscriptions/21801l50-f7g2-4223-bcf0-bb704sr9de3c/resourceGroups/import-terraform-simple-rg"

terraform fmt

terraform init

# Do not run this validate command now. It will fail.
terraform validate

terraform import azurerm_resource_group.rg /subscriptions/21801l50-f7g2-4223-bcf0-bb704sr9ded8/resourceGroups/import-terraform-simple-rg

# Once command is successifull, review the tfstate file.
# From the tf file, look for this.

#   "location": "centralindia",
#   "name": "import-terraform-simple-rg",

# Add the following to the tf4-resource-group.tf file:

#   location = "centralindia"
#   name = "import-terraform-simple-rg"

terraform fmt

terraform init

terraform validate

terraform plan -out main.tfplan

# You should see

# No changes. Your infrastructure matches the configuration.

# At this point, the resource is imported. This means, the resource group created by you, is now imported and managed by terraform.

# Now, you can midify the resource group by adding tags. Then run the plan and then apply command.

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan
# Now verify on the cloud

# Finally, you can destroy

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan