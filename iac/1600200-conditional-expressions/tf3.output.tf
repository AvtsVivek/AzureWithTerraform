output "condition_output" {
  value = var.simple_var == "default" ? "default_value_1" : "default_value_2"
}