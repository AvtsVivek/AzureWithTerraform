
cd iac\1300100-output-basic-example

cd ..\..

code . -r

terraform init

terraform fmt # formats the tf files.

terraform validate

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

terraform output

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan
