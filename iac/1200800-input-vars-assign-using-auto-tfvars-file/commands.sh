
cd iac\1200800-input-vars-assign-using-auto-tfvars-file

terraform fmt

terraform init

terraform validate

# Run the following command. 
terraform plan -out main.tfplan
# Now observer the plan. The values are picked from dev.auto.tfvars and terraform.tfvars files. 
# Note that environment variables if set will take precedence over tfvars files.
# So for this exercise, start with a new command prompt, do not use old one, as they may contina some evn vars.

terraform show main.tfplan

