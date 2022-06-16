# cd into the directory.
cd ./iac/900110-toset-var-output

terraform init

terraform fmt # formats the tf files.

terraform validate

terraform plan -out main.tfplan

terraform apply main.tfplan

terraform plan -destroy -out main.destroy.tfplan

terraform apply main.destroy.tfplan

