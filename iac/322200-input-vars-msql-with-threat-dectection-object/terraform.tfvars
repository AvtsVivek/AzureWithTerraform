
resource_group_name     = "vivek-mssql-sensitive-rg"
resource_group_location = "southindia"

# DB Variables
db_name              = "vivek-mysql"
db_storage_mb        = 5120
db_auto_grow_enabled = true




# Generic Variables
business_unit = "it"
environment   = "dev"



# DB Variables

tdpolicy = {
  enabled              = true,
  retention_days       = 10,
  email_account_admins = true,
  email_addresses      = ["dkalyanreddy@gmail.com", "stacksimplify@gmail.com"]
}
