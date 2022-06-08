
cd iac\31-input-vars-assign-using-auto-tfvars-file

terraform fmt

terraform init

terraform validate

# Run the following command. 
terraform plan -out main.tfplan
# Now observe the plan. The values are picked from dev.auto.tfvars file. 
# The values in dev.auto.tfvars override the once from terraform.tfvars and the defaults from c4.variables.tf
# Note that environment variables if set will take precedence over tfvars files.
# So for this exercise, start with a new command prompt, do not use old one, as they may contina some evn vars.


