
cd ./iac/2000400-workspace-full-example

cd ../..

code . -r

mkdir ssh-keys

cd ssh-keys

# Execute the following command to create a new SSH key:
ssh-keygen

terraform init

terraform fmt # formats the tf files.

terraform validate

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

# Once the vms are provisioned
# Ensure that the vm is created and running. Get the ip address assigned. In this case its 20.198.64.249
# get the ip address of the vms. Also browse the following link to see the status of the vms:
# app1/index.html and also app1/metadata.html
# Now run the command
# ssh -i ssh-keys/terraform-azure.pem azureuser@20.127.33.114
# Now you should be logged in. 
# Verify the folders, cd /var/www/html. This should contain app1 folder and the file index.html

terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform state show 

terraform output

# Even if these are sensitive, they will not be shown.
terraform output -json

# Switch to a new workspace
terraform workspace new dev

terraform workspace list

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

# Once the vms are provisioned
# Ensure that the vm is created and running. Get the ip address assigned. In this case its 20.198.64.249
# get the ip address of the vms. Also browse the following link to see the status of the vms:
# app1/index.html and also app1/metadata.html
# Now run the command
# ssh -i ssh-keys/terraform-azure.pem azureuser@20.127.33.114
# Now you should be logged in. 
# Verify the folders, cd /var/www/html. This should contain app1 folder and the file index.html

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan

terraform workspace list

terraform workspace select default

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan

