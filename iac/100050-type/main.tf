# Terraform settings Block

variable "SomeVariable" {
  type = string
}

output "SomeOutputVar" {
  value = var.SomeVariable
}

locals {
  web_vmnic_inbound_ports_map = {
    "100" : "80", # If the key starts with a number, you must use the colon syntax ":" instead of "="
    "110" : "443",
    "120" : "22"
  }
}

