
cd ./iac/1500200-terraform-full-example

cd ../..

code . -r

terraform init

terraform fmt # formats the tf files.

terraform validate

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

terraform state list

terraform output

terraform output resource_group_id_list

# Note the following and the output will be shown. Its sensitive and even then it will be shown.
terraform output resource_group_name_list

# Even if these are sensitive, they will not be shown.
terraform output -json

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan
