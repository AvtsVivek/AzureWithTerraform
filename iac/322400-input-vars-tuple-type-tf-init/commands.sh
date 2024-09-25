# cd into the directory.
cd ./iac/1202400-input-vars-tuple-type-tf-init

terraform fmt

terraform init

terraform validate

# Run the following command. 
terraform plan -var-file="terraform.tfvars" -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform state show 
