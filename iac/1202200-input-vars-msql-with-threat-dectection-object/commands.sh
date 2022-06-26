
cd iac\1202200-input-vars-msql-with-threat-dectection-object

terraform fmt

terraform init

terraform validate

# Run the following command. 
terraform plan -var-file="secrets.tfvars" -out main.tfplan

terraform show main.tfplan

terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform show 


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
# mysql -h <Azure DB Server Name> -u <Server admin login name> -pH@Sh1CoR3!
# mysql -h vivek-hr-vivek-dev-vivek-mysql.mysql.database.azure.com -u mydbadmin@vivek-hr-vivek-dev-vivek-mysql -p
# The above command will ask for password and then login to the database.
# Once logged in, use the following commands.
# show schemas;

# Now, you can destroy the resources.
terraform plan -destroy -out main.destroy.tfplan -var-file="secrets.tfvars"

# secrets.tfvars should not be checked in. But for this exercise, we checked.

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan

