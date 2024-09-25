
cd iac\320900-input-vars-list-tuples

terraform fmt

terraform init

terraform validate

# Run the following command. 
terraform plan -out main.tfplan
# Now observer the plan. The values are picked from terraform.tfvars file. 
# Note that environment variables if set will take precedence over tfvars files.
# So for this exercise, start with a new command prompt, do not use old command prompt, as they may contina some evn vars.

# In the plan output, observe the resource azurerm_virtual_network.myvnet, and in that, address_space.
# It should be an array of ip address ranges picked from terraform.tfvars(virtual_network_address_space = ["10.3.0.0/16", "10.4.0.0/16", "10.5.0.0/16"])
# It should look like this.
#   + address_space         = [
#       + "10.3.0.0/16",
#       + "10.4.0.0/16",
#       + "10.5.0.0/16",
#     ]

# Now in the file c3-virtual-network.tf, Change the address space configuration from this 
#address_space = var.virtual_network_address_space
# to the following.
#address_space       = [var.virtual_network_address_space[0]]
# in the later case, we are specifing only one value.
# Now run the command again

terraform show main.tfplan

terraform plan -out main.tfplan
# In the output plan, take a look at the address space.
