
cd iac\360100-conditional-expressions-console

cd ../..

code . -r

terraform console

var.simple_var != "" ? var.simple_var : "default-simple-var"

# exit or you can use Ctrl + d as well
exit

