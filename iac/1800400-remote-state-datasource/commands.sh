
cd ./iac/1800400-remote-state-datasource

cd ../..

code . -r

mkdir ssh-keys

cd ssh-keys

ssh-keygen

terraform init

terraform fmt # formats the tf files.

terraform validate

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

terraform state list

terraform output

# Even if these are sensitive, they will not be shown.
terraform output -json

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan


