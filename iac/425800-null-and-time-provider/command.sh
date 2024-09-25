
cd ./iac/2205800-null-and-time-provider

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

# Just ensure, we are starting from a clean state.
terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan

# Ensure that a folder with name is local-exec-output-files is created.
terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

terraform state list

# Now, once the vms are provisioned
# Ensure that the vm is created and running. Get the ip address assigned. In this case its 20.198.64.249
# get the ip address of the vms. Also browse the following link to see the status of the vms:
# app1/index.html and also app1/metadata.html
# Now run the command. Run this on git bash.
# ssh -i ssh-keys/terraform-azure.pem azureuser@20.232.160.252
# Now you should be logged in. 

terraform state show null_resource.sync_app1_static

cd /tmp

cd /var/www/html

ls -lrt

cd app1

ls -lrt

# You should now see the following 4 files. 

# -rw-r--r--. 1 root root  192 Jul  2 14:22 index.html
# -rw-r--r--. 1 root root   19 Jul  2 14:24 app1-file2.html
# -rw-r--r--. 1 root root   23 Jul  2 14:24 app1-file1.html
# -rw-r--r--. 1 root root 2505 Jul  2 14:25 metadata.html

# Now grab the public ip(or dns name) of the machine and access the files as follows.

http://20.232.160.252/app1/app1-file1.html
http://20.232.160.252/app1/app1-file2.html

# Now make some modifications to app1 folder. Like adding a new file, or changing the contents of the existing file.

# Now run the following commands.

terraform plan -out main.tfplan
# Observe the plan. null_resource.sync_app1_static must be replaced
# Review the plan.

terraform show main.tfplan

terraform apply main.tfplan

# Now grab the public ip(or dns name) of the machine and access the files as follows.
http://20.232.160.252/app1/app1-file1.html
http://20.232.160.252/app1/app1-file2.html

# Now you should see the changes.

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


