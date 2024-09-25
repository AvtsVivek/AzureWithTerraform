cd ../..

cd ./iac/340500-output-foreach-console-two-input-vars

cd ../..

code . -r

terraform console

var.fruits

# element function.
element(["apple", "banana", "pine apple", "grape", "strawberry"], 0)
element(var.fruits, 0)
element(var.fruits, 1)

index(["apple", "banana", "pine apple", "grape", "strawberry"], "apple")

index(["apple", "banana", "pine apple", "grape", "strawberry"], "banana")

index(["apple", "banana", "pine apple", "grape", "strawberry"], "pine apple")

index(["apple", "banana", "pine apple", "grape", "strawberry"], "jackfruit") # This will return an error.

# length function. Gives the number of elements in the list
length(var.fruits)

# To get last element from list
element(var.fruits, length(var.fruits)-1)

# for expression. # https://www.terraform.io/docs/language/expressions/for.html
[for fruit in var.fruits : fruit]

# To get the index of the element in the list. i is the index(iterator).
[for i, fruit in var.fruits : fruit]

[for i, fruit in var.fruits : i]

[for fruit in var.fruits : upper(fruit)]

[for fruit in var.fruits : length(fruit)]

# Just print the index of the element. We are passing the iterator.
[for i, fruit in var.fruits : i]

# The following is not woring, I am not sure why
[for i, fruit in var.fruits : var.fruits(i)]

var.cloud-providers

# Get the elements as an array
[for cloud-provider in var.cloud-providers : cloud-provider]

# Get the iterator as array. Here there are two inputs. The first is always the iterator
[for i, cloud-provider in var.cloud-providers : i]

# Get the elements as an array. The 'iterator, cloud-provider' are local variables. To they can be called whatever you want.
[for iterator, cloud-provider in var.cloud-providers : cloud-provider]

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

#######################


## Now maps
# The following putputs a simple map.
{for fruit in var.fruits : fruit => fruit}

# The following is another map, if it makes any sense.
{for i, fruit in var.fruits : i => fruit}

# The following is yet another map.
{for i, fruit in var.fruits : fruit => i}

# one more map, if you are not bored.
{for i, fruit in var.fruits : i => length(fruit)}


# Similar stuff for cloud-providers
{for cloud-provider in var.cloud-providers : cloud-provider.id => cloud-provider.name}

{for i, cloud-provider in var.cloud-providers : cloud-provider.id => cloud-provider.name}

{for i, cloud-provider in var.cloud-providers : i => cloud-provider.name}


# Terraform keys() function: keys takes a map and returns a list containing the keys from that map.
keys({for fruit in var.fruits : fruit => fruit})
keys({for i, fruit in var.fruits : i => fruit})
keys({for cloud-provider in var.cloud-providers : cloud-provider.id => cloud-provider.name})
keys({for i, cloud-provider in var.cloud-providers : i => cloud-provider.name})

# Terraform values() function: values takes a map and returns a list containing the values from that map.
values({for fruit in var.fruits : fruit => fruit})
values({for i, fruit in var.fruits : i => fruit})
values({for cloud-provider in var.cloud-providers : cloud-provider.id => cloud-provider.name})
values({for i, cloud-provider in var.cloud-providers : i => cloud-provider.name})

exit