
cd ../..

cd ./iac/800140-terraform-console-lists


terraform console

# exit or you can use Ctrl + d as well
exit

terraform console

local.name

var.in

var.fruits

# element function.
element(["apple", "banana", "pine apple", "grape", "strawberry"], 0)
element(var.fruits, 0)
element(var.fruits, 1)

# length function. Gives the number of elements in the list
length(var.fruits)

# To get last element from list
element(var.fruits, length(var.fruits)-1)

# for expression. # https://www.terraform.io/docs/language/expressions/for.html
[for fruit in var.fruits : fruit]
[for fruit in var.fruits : upper(fruit)]

var.cloud-providers

# Get the elements as an array
[for cloud-provider in var.cloud-providers : cloud-provider]
# The following extracts id and name properties from objects
[for cloud-provider in var.cloud-providers : cloud-provider.id]
# and the following the names as an array
[for cloud-provider in var.cloud-providers : cloud-provider.name]
# Names in the upper case.
[for cloud-provider in var.cloud-providers : upper(cloud-provider.name)]

# Splat expression
# https://www.terraform.io/docs/language/expressions/splat.html
# Using splat expressions. The following prints out all of the elements as an array.
var.cloud-providers[*]
# The above is same as below
[for cloud-provider in var.cloud-providers : cloud-provider]

# Using splat expressions. The following prints out all the ids as an array.
var.cloud-providers[*].id
# The above is same as below
[for cloud-provider in var.cloud-providers : cloud-provider.id]

# and the following the names as an array
var.cloud-providers[*].name
# The above is same as below
[for cloud-provider in var.cloud-providers : cloud-provider.name]

# and the following the names as an array in upper case
# The following both are not working. 
var.cloud-providers[upper(*)].name
upper(var.cloud-providers[*].name)
# The following works.
[for cloud-provider in var.cloud-providers : upper(cloud-provider.name)]

