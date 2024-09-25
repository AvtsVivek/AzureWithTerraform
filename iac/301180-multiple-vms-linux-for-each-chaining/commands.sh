
cd .\iac\1001180-multiple-vms-linux-for-each-chaining\

cd ssh-keys

ssh-keygen

terraform fmt

terraform init

terraform validate

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform state show 

# Once created, go to the portal, enzure the resources are created, and vm is in running state.

# Once created, get the dns name and ip address of the newly created vm.
 
# Also go to the ip address resource that got created. 
# It should have an dns name that looks something like this app1-vm-autqly.centralindia.cloudapp.azure.com.

# Edit the following with your correct ip address obtained from porta.azure.com
# Here azureuser of the vm.
ssh -i ssh-keys/terraform-azure.pem azureuser@20.204.32.208

# Once you are in the vm, you can run the hostname command to see the name of the vm.

hostname

# Now cd into /var/www/html/

cd /var/www/html/

# Observer the file in this directory
dir

cat index.html

cd app1

dir

cat index.html
cat metadata.html

exit

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan

