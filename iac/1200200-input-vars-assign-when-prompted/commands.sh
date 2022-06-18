
cd iac\1200200-input-vars-assign-when-prompted

terraform fmt

# Exercise 1
############
terraform init

terraform validate

# Run the following command. 
terraform plan -out main.tfplan
# Now you will be asked to provide a name ofr 'Resource Group Name'
terraform show main.tfplan

terraform apply main.tfplan
# Now verify on the portal.

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan

# Exercise 2
############

terraform init

terraform validate

# The following steps will help understand how to specify(override) the variable value
# We can specify using the -var option.
terraform plan -var="resource_group_name=vivek-rg" -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan
# Now verify on the portal.

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan


# Exercise 3
# This is same as Exercise 2, but we will not use -out option for plan. 
# Then in such a case, we need to specify(overide) the variale during both plan and then apply as well.

terraform init

terraform validate

# The following steps will help understand how to specify(override) the variable value
# We can specify using the -var option.
terraform plan -var="resource_group_name=vivek-rg" 

# we need to specify(overide) the variale during both plan and then apply as well.
# If not it will ask for it.
terraform apply -var="resource_group_name=vivek-rg" 
# Now verify on the portal.

terraform plan -destroy -var="resource_group_name=vivek-rg"

terraform destroy -var="resource_group_name=vivek-rg" -auto-approve

# Finally if we want to specify multiple vars we can use var option as follows.
# terraform plan -var="resoure_group_name=vivek-rg" -var="resoure_group_location=westus" -var="virtual_network_name=demovnet" -var="subnet_name=demosubnet" -out main.tfplan

