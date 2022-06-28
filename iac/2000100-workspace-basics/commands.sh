
# cd into the directory.
cd ./iac/2000100-workspace-basics

cd ..\..

terraform fmt

terraform workspace list

terraform workspace new dev

terraform workspace new dev-2

terraform workspace list

terraform workspace show

terraform workspace delete dev-2

terraform workspace select default

terraform workspace select dev

terraform workspace list

terraform workspace show

terraform workspace delete dev-2

terraform workspace list

terraform workspace show

terraform init

