
# Run the following command ni git bash command prompt. 
# Running this on powershell prompt will not work.
cd iac/3401200-external-provider-bash-ssh-keygen/

cd ../..

cd ..

terraform fmt

terraform init

terraform validate

terraform plan

terraform apply -auto-approve

terraform plan --destroy

# Ensure you are in bash prompt.
cd iac/3401200-external-provider-bash-exmpl/
echo '{"key_name": "terraformdemo", "key_environment": "dev"}' | ./script-dir/ssh-key-gen.sh
