
# cd into the directory.
cd ./iac/2000500-remote-workspace-basics

cd ..\..

terraform fmt

terraform init

terraform workspace list

terraform workspace new dev

terraform workspace new dev-2

terraform workspace list

terraform workspace show

terraform workspace delete dev-2

terraform workspace select default

terraform workspace select dev

# Note, in the azure, new files are created in the tfstatefiles container.

terraform workspace list

terraform workspace show

terraform workspace delete dev-2

terraform workspace select default

terraform workspace delete dev

terraform workspace list

terraform workspace show

# The following will fail. Default cannot be deleted.
terraform workspace delete default
