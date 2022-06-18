
cd ./iac/1201100-terraform-console-functions

terraform fmt

# Launch Terraform console
terraform console

## Length Function
# https://www.terraform.io/docs/language/functions/length.html

# String
length("hi")
length("hello")

# List
length(["a", "b", "c"])

# Map
length({"key" = "value"})
length({"key1" = "value1", "key2" = "value2" })

## Substring 
# https://www.terraform.io/docs/language/functions/substr.html

substr("Vivek Koppula", 1, 4)
substr("Vivek Koppula", 0, 5)
substr("Vivek Koppula", 0, 1)
substr("Vivek Koppula", 0, 0)
substr("Vivek Koppula", 0, 10)

## Contains
# https://www.terraform.io/docs/language/functions/contains.html

contains(["a", "b", "c"], "a")
contains(["a", "b", "c"], "d")
contains(["eastus", "eastus2"], "westus2")

# https://www.terraform.io/docs/language/functions/lower.html

lower("VIVEK KOPPULA")
lower("MEWURK Tech")

# https://www.terraform.io/docs/language/functions/upper.html
upper("vivek")
upper("MEWURK Tech")


# Regex
# https://www.terraform.io/docs/language/functions/regex.html
regex("india$", "westindia")
regex("india$", "centralindia")
regex("india$", "southindia")
regex("india$", "eastindia")
regex("india$", "eastus")

# Check if the regex is working with can function.
can(regex("india$", "westindia"))
can(regex("india$", "centralindia"))
can(regex("india$", "southindia"))
can(regex("india$", "eastindia"))
can(regex("india$", "eastus"))


exit

