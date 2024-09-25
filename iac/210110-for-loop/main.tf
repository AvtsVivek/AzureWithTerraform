
variable "var_user_names" {
  description = "User Names"
  type        = list(string)
  default     = ["user111", "user222", "user333"]
}

locals {
  local_user_names = ["user444", "user555", "user666"]
}

output "print_the_var_names" {
  value = [for name in var.var_user_names : name]
}

output "print_the_local_names" {
  value = [for name in local.local_user_names : name]
}

# The following is not working.
# output "print_the_var_names_count" {
#   value = var.var_user_names.count
# }