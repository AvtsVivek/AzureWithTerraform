
cd iac\22-meta-arg-lifecycle-prevent-destroy

terraform fmt

terraform init

terraform validate

# Ensure that lifecycle.prevent_destroy set for the virtual network resource. See the file c3-virtual-network.tf
# prevent_destroy = true
terraform plan -out main.tfplan

terraform apply main.tfplan

# Ensure the resource is created on the portal.
# Now execute the following command. 
terraform plan -destroy -out main.destroy.tfplan
# you should see the following error.
# Error: Instance cannot be destroyed
# │
# │   on c3-virtual-network.tf line 2:
# │    2: resource "azurerm_virtual_network" "myvnet" {
# │
# │ Resource azurerm_virtual_network.myvnet has lifecycle.prevent_destroy set, but the plan calls for this resource to be destroyed. To avoid this error and continue with the plan, either disable
# │ lifecycle.prevent_destroy or reduce the scope of the plan using the -target flag.

# Now comment out the prevent_destroy = true
# Ensure that lifecycle.prevent_destroy set to false or comment it out for the virtual network resource. See the file c3-virtual-network.tf
terraform plan -destroy -out main.destroy.tfplan

terraform apply main.destroy.tfplan
