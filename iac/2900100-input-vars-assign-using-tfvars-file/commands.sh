
cd iac\29-input-vars-assign-using-tfvars-file

terraform fmt

terraform init

terraform validate

# Run the following command. 
terraform plan -out main.tfplan

terraform show main.tfplan

# Now observer the plan. The values are picked from tfvars file. 
# Note that environment variables if set will take precedence over tfvars files.
# So for this exercise, start with a new command prompt, do not use old one, as they may contina some evn vars.
