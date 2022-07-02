
cd ./iac/2200800-null-and-time-provider

cd ../..

code . -r

mkdir ssh-keys

cd ssh-keys

# Execute the following command to create a new SSH key:
# You need to use git bash for this.
# For the file name use terraform-azure
ssh-keygen

terraform init

terraform fmt # formats the tf files.

terraform validate

# Ensure that a folder with name is local-exec-output-files is created.

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

# Now, once the vms are provisioned
# Ensure that the vm is created and running. Get the ip address assigned. In this case its 20.198.64.249
# get the ip address of the vms. Also browse the following link to see the status of the vms:
# app1/index.html and also app1/metadata.html
# Now run the command. Run this on git bash.
# ssh -i ssh-keys/terraform-azure.pem azureuser@20.228.146.41
# Now you should be logged in. 

# Look for creation-time.txt inside of local-exec-output-files

terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform state show azurerm_linux_virtual_machine.mylinuxvm

terraform output

# Even if these are sensitive, they will not be shown.
terraform output -json

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan

# Look for destroy-time.txt inside of local-exec-output-files


