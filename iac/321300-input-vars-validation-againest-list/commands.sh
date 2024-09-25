
cd iac\1201300-input-vars-validation-againest-list

terraform fmt

terraform init

terraform validate

# Ensure resource_group_location = "eastus" in the terraform.tfvars file
# Also ensure second_resource_group_location = "southindia"
# Run the following command. 
terraform plan -out main.tfplan
# This shuld pass.

terraform show main.tfplan


# Now change second_resource_group_location = "eastus" in the terraform.tfvars file
# Run the following command. 
terraform plan -out main.tfplan
# This will fail with a message - We only allow Resources to be created in westindia or southindia locations.

#│ Error: Invalid value for variable
#│
#│   on c4-variables.tf line 52:
#│   52: variable "second_resource_group_location" {
#│
#│ We only allow Resources to be created in westindia or southindia locations.
#│
#│ This was checked by the validation rule at c4-variables.tf:56,3-13.


