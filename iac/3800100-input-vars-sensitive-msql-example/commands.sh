
cd iac\38-input-vars-sensitive-msql-example

terraform fmt

terraform init

terraform validate

# Run the following command. 
terraform plan -var-file="secrets.tfvars" -out main.tfplan
# Now review the terraform plan
#Observation:
#1. Review the values for db_username and db_password in azurerm_mysql_server resource
#2. You should see they were marked as sensitive. They are redacted

# It should look something like this.

#  # azurerm_mysql_server.viveksqlserver will be created
#  + resource "azurerm_mysql_server" "viveksqlserver" {
#      + administrator_login               = (sensitive)
#      + administrator_login_password      = (sensitive value)
#      + auto_grow_enabled                 = true

terraform apply "main.tfplan"

#3. Also observe terraform.tfstate. Search for admin. You will see somehting like this.
#"administrator_login": "mydbadmin",
#"administrator_login_password": "H@Sh1CoR3!",
# Terraform state file contains values for these sensitive variables terraform.tfstate. 
# You must keep your state file secure to avoid exposing this data

# Now to login, you can follow this instructions
# https://github.com/stacksimplify/hashicorp-certified-terraform-associate-on-azure/tree/main/28-Input-Variables-Sensitive#step-10-verify-and-connect-to-mysql-db

terraform plan -destroy -out main.destroy.tfplan -var-file="secrets.tfvars"

# secrets.tfvars should not be checked in. But for this exercise, we checked.

terraform apply main.destroy.tfplan

