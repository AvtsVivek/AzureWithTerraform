variable "fruits" {
  default = ["apple", "banana", "pine apple", "grape", "strawberry"]
}

output "OutputFruits" {
  # toset(["straberry", "grape ", "banana", "apple", ])
  # Not sure how to interpret this.
  value = toset(var.fruits)
}

