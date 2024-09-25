
cd iac\1200300-input-vars-reference-other-vars

terraform fmt

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