# Terraform settings Block

variable "SomeVariable" {
  type = string
}

output "SomeOutputVar" {
  value = var.SomeVariable
}

