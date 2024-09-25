
cd ./iac/1201400-terraform-console-maps

terraform fmt

# Launch Terraform console
terraform console

var.images

type(var.images)

# The following gives "one"
lookup(var.images, 1, 6)

# The following gives "two"
lookup(var.images, 2, 6)

# The following gives "6". Note that it is "6" string. Why is this string? Becuse the map var.images is a map of type string.
# That is, the values are string. So 6, the default is converted to string.
lookup(var.images, 3, 6)

# So lookup helps us to get value from a map, given the key. If the key is not present, it returns the default. 6 in this case.

exit
