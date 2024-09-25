
cd iac\540100-external-provider-ps

cd ..\..

cd ..

'{"key_name": "terraformdemo", "key_environment": "dev"}' | .shell-script/ssh_key_generator.sh

cd shell-scripts

bash ./shell-scripts/simple.sh '{"key_name": "terraformdemo", "key_environment": "dev"}'

bash ./shell-scripts/simple.sh

bash ./shell-scripts/ssh_key_generator.sh

sh ./shell-script/ssh_key_generator.sh

./shell-script/simple.sh 

terraform fmt

terraform init

terraform validate

Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process

Get-ExecutionPolicy

terraform plan -var "environment_name=Dev"

