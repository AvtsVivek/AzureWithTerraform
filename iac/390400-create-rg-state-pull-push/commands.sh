
cd ./iac/390400-create-rg-state-pull-push

cd ../..

code . -r

terraform init

terraform fmt # formats the tf files.

terraform validate

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform state show 

terraform state pull

# Save the output obtained from the above command in a file, name it as "state-pull.tfstate"
# Now you can push the same file to the remote state store. Run the following command for that.
# but first, note down the tfstate file on the cloud. terraform.tfstate

## LAST MODIFIED	6/27/2022, 1:54:59 PM
## CREATION TIME	6/27/2022, 1:54:58 PM
## VERSION ID	2022-06-27T08:24:59.0461409Z

# Now push the state file 
terraform state push state-pull.tfstate

# Now observer the difference again.

## LAST MODIFIED	6/27/2022, 2:12:55 PM
## CREATION TIME	6/27/2022, 1:54:58 PM
## VERSION ID	2022-06-27T08:42:55.2419367Z

# Note last modified and Version Id change.

terraform output

# Even if these are sensitive, they will not be shown.
terraform output -json

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan


