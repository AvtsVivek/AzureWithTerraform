
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

# When there are no provider blocks in your configuration, 
# the following does not make any sence
terraform init

# Try deleting the default workspace. You cannot delete the default workspace.

terraform workspace list

terraform workspace show

terraform workspace delete default