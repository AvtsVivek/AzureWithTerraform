
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

# The following is not working.
echo '{"key_name": "terraformdemo", "key_environment": "dev"}' | ./script-dir/ssh-key-gen.sh
# But the following is working.
echo '{"key_name": "terraformdemo", "key_environment": "dev"}' | ./script-dir/ssh-key-generator.sh
