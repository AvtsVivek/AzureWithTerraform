
cd iac\1200700-input-vars-assign-using-multiple-tfvars-file

terraform fmt

terraform init

terraform validate

# Run the following command. 
terraform plan -out main.tfplan 
# Now observe the plan. The values are picked from terraform.tfvars file the defaults from c4.variables.tf. 
# Note that environment variables if set will take precedence over tfvars files.
# So for this exercise, start with a new command prompt, do not use old one, as they may contina some evn vars.

terraform plan -var-file dev.tfvars -out main.tfplan
# Now observer the plan. The values are picked from dev.tfvars file. 
# The values in dev.tfvars override the once from terraform.tfvars and the defaults from c4.variables.tf

# The following also seems to work
terraform plan -var-file="dev.tfvars" -out main.tfplan

terraform show main.tfplan

