# cd into the directory.
cd ./iac/900100-terraform-console-toset

terraform fmt

# Launch Terraform console
terraform console

# All Strings to Strings. In a set order does not matter.
toset(["straberry", "grape ", "banana", "apple", ])

type(toset(["straberry", "grape ", "banana", "apple", ]))

# Mixed Type (Strings and Numbers) - Converted to Strings 
toset(["Mumbai", "Delhi", 123, 456])

type(toset(["Mumbai", "Delhi", 123, 456]))

# Removes duplicates (Set collections are unordered and cannot contain duplicate values,) 
toset(["z", "k", "r", "a", "k"])

type(toset(["z", "k", "r", "a", "k"]))

# Also arranges in the order (The order provided will be gone) - In short set collections are unordered
toset([4, 100, 20, 11, 21, 7, 6, 4, 100])

type(toset([4, 100, 20, 11, 21, 7, 6, 4, 100]))

# Using Variables
toset(var.fruits)

type(toset(var.fruits)) 

# Exit terraform console same as 'Ctrl + D'
exit
