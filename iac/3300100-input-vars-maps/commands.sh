
cd iac\33-input-vars-maps

terraform fmt

terraform init

terraform validate

# Run the following command. 
terraform plan -out main.tfplan
# Now observer the plan. The values are picked from terraform.tfvars file. 
# Observe azurerm_public_ip.mypublicip. Its sku and tags.

# Now try with lookup function. See the file c4-virtual-network.tf, azurerm_public_ip in it sku.
# So lookup helps us to get value from a map, given the key. If the key is not present, it returns the default. 
