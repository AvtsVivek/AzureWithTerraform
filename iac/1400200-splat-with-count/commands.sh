
cd iac\1400200-splat-with-count

cd ..\..

code . -r

terraform init

terraform fmt # formats the tf files.

terraform validate

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

terraform output

terraform output resource_group_id

# Note the following and the output will be shown. Its sensitive and even then it will be shown.
terraform output virtual_network_name

terraform output -json

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan
