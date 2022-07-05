
cd ./iac/2205400-file-provisioner-full-example

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

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

# Once the vms are provisioned
# Ensure that the vm is created and running. Get the ip address assigned. In this case its 20.198.64.249
# get the ip address of the vms. Also browse the following link to see the status of the vms:
# app1/index.html and also app1/metadata.html
# Now run the command. Run this on git bash.
# ssh -i ssh-keys/terraform-azure.pem azureuser@52.249.185.140
# Now you should be logged in. 
# Verify the folders, cd /var/www/html. This should contain app1 folder and the file index.html

# From the virtual machine, you can run the following command 
cd /tmp

ls -lrt

# First observer file-copy.html. This file is copied from the local machine to the virtual machine.
# Then observe fle.log
cat file.log

# now cd into app1
cd app1

ls -lrt

exit

terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform state show 

terraform output

# Even if these are sensitive, they will not be shown.
terraform output -json

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan


