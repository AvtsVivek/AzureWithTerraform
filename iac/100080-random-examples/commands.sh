
cd iac\100080-random-example

# Terraform follows, the following workflow.

# Init, Plan, Validate, Apply, and then Destroy

terraform init

terraform fmt # formats the tf files.

terraform validate

terraform plan -out main.tfplan

terraform apply main.tfplan

terraform plan -destroy -out main.destroy.tfplan

terraform apply main.destroy.tfplan
