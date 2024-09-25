
cd iac\320400-input-vars-assign-using-env-vars

terraform fmt

terraform init

terraform validate

# Run the following command. 
terraform plan -out main.tfplan

# Now you will be asked to provide a name ofr 'Resource Group Name'
# So Press Ctrl + C to cancel the command.
# Now set an environment variable. This creates and assigns a new environment variable only to the current session.
# With powershell, note the following two points.
# Powershell - 1. The variable should not have dash or hiphen('-'). It should only use underscore(_).
# So resource_group_name is correct. But TF_VAR_resource-group-name is not correct when using powershell.
# Powershell - 2. When assigning, you should use quotes.
# So $env:TF_VAR_resource_group_name='vivek-set-using-env-var-rg' is correct. But not the following.
# $env:TF_VAR_resource_group_name=vivek-set-using-env-var-rg. This is without quotes and does not work.
$env:TF_VAR_resource_group_name='vivek-set-using-env-var-rg'

# Now verify it the env var is set using the followiong command.
$env:TF_VAR_resource_group_name

# With poweshell, to get all the env vars, use the following command.
dir env:

# now run the plan.
terraform plan -out main.tfplan

terraform show main.tfplan

# If you are using cmd and not powershell, do NOT use quotes.
SET TF_VAR_resource-group-name=vivek-set-using-env-var-rg
# Do not use the following. Do not use quotes around it. This doe snot work
SET TF_VAR_resource-group-name='vivek-set-using-env-var-rg'
# Also double quiotes, do not use the following. Do not use quotes around it. This doe snot work
SET TF_VAR_resource-group-name="vivek-set-using-env-var-rg"

# Now run the following command to print out the vars. 
terraform plan -out main.tfplan

terraform show main.tfplan

# The following steps are not required. Just observe the plan and that should be suffecient.
terraform apply main.tfplan
# Now verify on the portal.

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan
