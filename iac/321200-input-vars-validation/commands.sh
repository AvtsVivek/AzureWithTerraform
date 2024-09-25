
cd iac\321200-input-vars-validation

terraform fmt

terraform init

terraform validate

# Run the following command. 
# This validates the variable resource_group_name and somevar againest the values assigned in the 
# file terraform.tfvars. The validation rules defined in the variable are checked
terraform plan

# Run the following command. 
# This validates the variable resource_group_name againest the value that is assigned 
# The assigned value for this case is 'res'(3 chars). The assigned value must me 6, 7, 8 chars.
# So this fails
terraform plan -var 'resource_group_name=res'

# Run the following command. 
# This validates the variable resource_group_name againest the value that is assigned
# The assigned value for this case is 'restra'(6 chars). The assigned value must me 6, 7, 8 chars.
# So this passes
terraform plan -var 'resource_group_name=restra'

# Run the following command. 
# This validates the variable resource_group_name againest the value that is assigned 
# The assigned value for this case is '123456789'(6 chars). The assigned value must me 6, 7, 8 chars.
# So this fails
terraform plan -var 'resource_group_name=123456789'

# Now try the following. This will fail.
terraform plan -var 'somevar=123456789'
