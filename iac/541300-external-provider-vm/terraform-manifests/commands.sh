
cd iac/541300-external-provider-vm/terraform-manifests

cd iac/541300-external-provider-vm

cd ../..

cd ..

cd ./terraform-manifests

terraform fmt
# Run the following commands in bash. They would not work in powershell.
# Run the following commands in bash. They would not work in powershell.
# Run the following commands in bash. They would not work in powershell.

terraform init

# Run the following commands in bash. They would not work in powershell.
# Run the following commands in bash. They would not work in powershell.
# Run the following commands in bash. They would not work in powershell.

terraform validate

# Run the following commands in bash. They would not work in powershell.
# Run the following commands in bash. They would not work in powershell.
# Run the following commands in bash. They would not work in powershell.


terraform plan -out main.tfplan

# Run the following commands in bash. They would not work in powershell.
# Run the following commands in bash. They would not work in powershell.
# Run the following commands in bash. They would not work in powershell.


terraform apply main.tfplan

    # Ensure that the vm is created and running. Get the ip address assigned. In this case its 13.72.114.178
    # Now run the command
    # ssh -i script-dir/terraformdemo-dev.sshkeys azureuser@13.72.114.178
    # Now you should be logged in. 
    # Verify the folders, cd /var/www/html. This should contain app1 folder and the file index.html
    # 
    # 
    # Browse the following.
    # http://13.72.114.178
    # http://13.72.114.178/app1/index.html
    # http://13.72.114.178/app1/metadata.html
    # 
    # Also go to the ip address resource that got created. It should have an dns name that looks something like this app1-vm-autqly.centralindia.cloudapp.azure.com.
    # 
    # app1-vm-autqly.centralindia.cloudapp.azure.com
    # app1-vm-autqly.centralindia.cloudapp.azure.com/app1/index.html
    # app1-vm-autqly.centralindia.cloudapp.azure.com/app1/metadata.html

    
    
exit

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

# The following does not work
terraform apply main.destroy.tfplan

# So run this.
terraform apply --destroy

# Now understanding the get command.

# First delete the modules folder

rm -r -fo .terraform/modules

Remove-Item -Recurse -Force .terraform/modules

Remove-Item -Recurse -Force .terraform

Remove-Item terraform.tfstate

Remove-Item terraform.tfstate.backup

Remove-Item main.tfplan

Remove-Item main.destroy.tfplan

Remove-Item .terraform.lock.hcl


