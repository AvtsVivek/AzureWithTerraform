
cd iac\340300-output-count-with-splat-vnet

cd ..\..

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

terraform output

terraform output resource_group_id

# Note the following and the output will be shown. Its sensitive and even then it will be shown.
terraform output virtual_network_names

# Even if these are sensitive, they will not be shown.
terraform output virtual_network_ids

# Even if these are sensitive, they will not be shown.
terraform output -json

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan
