
cd .\iac\1201700-input-ouput-vars-sensitive

terraform fmt

terraform init

terraform validate

# Ensure resource_group_location = "eastus" in the terraform.tfvars file
# Also ensure second_resource_group_location = "southindia"
# Run the following command. 
terraform plan -out main.tfplan
# This shuld pass.

terraform show main.tfplan

# Launch Terraform console
terraform console

# If this variable is set to a sensitive to true, then the value will be hidden.
var.images

exit

