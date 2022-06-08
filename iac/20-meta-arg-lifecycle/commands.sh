
cd iac\20-meta-arg-lifecycle

terraform fmt

terraform init

terraform validate

terraform plan -out main.tfplan

terraform apply main.tfplan

# Ensure the resource is created on the portal.
# Now change the virtual network name from "vivek-1-myvnet" to "vivek-2-myvnet"(see the file c4-variables.tf and look for the variable vnet-name)
# Now run the plan again. 
terraform plan -out main.tfplan
# Observe the plan. It first destroys and then creates the new plan.
# Look for "-/+ destroy and then create replacement"
# This is the default behaviour.
# Now apply the plan. 

terraform apply main.tfplan
# Now observe the sets of action. First it will destroy and then it will create the vnet with the new name. 

terraform plan -destroy -out main.destroy.tfplan

terraform apply main.destroy.tfplan
