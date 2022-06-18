
cd .\iac\1201500-input-vars-sensitive\

terraform fmt

# Launch Terraform console
terraform console

# If this variable is set to a sensitive to true, then the value will be hidden.
var.images

exit

