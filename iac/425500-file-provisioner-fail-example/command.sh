
cd ./iac/425500-file-provisioner-fail-example

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

# First ensure that on_failure is set to "continue" in the tf6-linux-virtual-machne.tfvars file is commented out.

#   provisioner "file" {
#     source      = "apps/file-copy.html"
#     destination = "/var/www/html/file-copy.html"
#     # on_failure  = continue  # Enable this during Step-05-01 Test-2
#   }

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

# You should get a file provisioner error.

# │ Error: file provisioner error
# │
# │   with azurerm_linux_virtual_machine.mylinuxvm,
# │   on tf6-linux-virtual-machine.tf line 63, in resource "azurerm_linux_virtual_machine" "mylinuxvm":
# │   63:   provisioner "file" {
# │
# │ Upload failed: scp: /var/www/html/file-copy.html: Permission denied

# Also look at the tfstate file. The resource azurerm_linux_virtual_machine status should be tanted.

# Now ensure that on_failure is set to "continue" in the tf6-linux-virtual-machne.tfvars file is commented out.

#   provisioner "file" {
#     source      = "apps/file-copy.html"
#     destination = "/var/www/html/file-copy.html"
#     on_failure  = continue  # Enable this during Step-05-01 Test-2
#   }

# Now run the following command.
terraform apply --auto-approve 

# As the command executes, you should see this.
# Plan: 1 to add, 0 to change, 1 to destroy.
# So the tainted resource is destroyed and then recreated.
# This time, the file provisioner fails, but apply command is successful.

# Now, once the vms are provisioned
# Ensure that the vm is created and running. Get the ip address assigned. In this case its 20.198.64.249
# get the ip address of the vms. Also browse the following link to see the status of the vms:
# app1/index.html and also app1/metadata.html
# Now run the command. Run this on git bash.
# ssh -i ssh-keys/terraform-azure.pem azureuser@20.228.181.237
# Now you should be logged in. 

# From the virtual machine, you can run the following command 
cd /tmp

ls -lrt

# First observer file-copy.html. This file is copied from the local machine to the virtual machine.
# Then observe fle.log
cat file.log

# now cd into app1
cd app1

ls -lrt

# Now observe that the fifth provisioning is failed. There is no file-copy.html in the virtual machine.
# "/var/www/html/file-copy.html"
cd /var/www/html
# Look for file-copy.html
ls -lrt

exit

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


