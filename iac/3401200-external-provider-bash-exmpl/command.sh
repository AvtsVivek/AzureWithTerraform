
# Run the following command ni git bash command prompt. 
# Running this on powershell prompt will not work.
cd iac/3401200-external-provider-bash-exmpl/

cd ..\..

cd ..

terraform fmt

terraform init

terraform validate

terraform plan

terraform apply -auto-approve

terraform plan --destroy
