variable "fruits" {
  default = ["apple", "banana", "pine apple", "grape", "strawberry"]
}

output "ToSetOfFruits" {
  description = "Value of ToSetOfFruits"
  # toset(["straberry", "grape ", "banana", "apple", ])
  # Not sure how to interpret this.
  value = toset(var.fruits)
}

# output "TypeOfFruits" {
#  description = "Value Type of Fruits"
  # toset(["straberry", "grape ", "banana", "apple", ])
  # Not sure how to interpret this.
  # the following both does not work
  # value = type(var.fruits)
  # value = type(toset(var.fruits))
# }
