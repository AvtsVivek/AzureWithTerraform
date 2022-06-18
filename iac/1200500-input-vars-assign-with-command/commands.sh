
cd iac\1200500-input-vars-assign-with-command

terraform fmt

terraform init

terraform validate

# Run the following command. 
terraform plan -out main.tfplan

terraform show main.tfplan

# at the time of applying the plan, the variable "resource_group_name" can be set as follows.
# This overrides the value set as default, or using environment variables.
# The default value is set in the variable resource_group_name as follows.
# Ensure this is uncommented if you want to try this.
# default     = "vivek-rg"
terraform apply -var="resource_group_name=vivek-set-using-cli-var-rg"  

# Now verify on the portal.

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan
