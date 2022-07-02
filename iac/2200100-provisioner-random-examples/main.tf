# Terraform settings Block

# This demonistrates random_string and random_id

terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

resource "random_string" "resource_code" {
  length  = 5
  special = true
  upper   = true
  provisioner "local-exec" {
    when = create
    # command = "echo -n $(random_string.resource_code.value)"
    # command = "VM Host name: ${self.length}"
    command     = "Get-Date > provisioner-output.txt"
    interpreter = ["PowerShell", "-Command"]
    working_dir = "local-exec-output-files/"
  }

  provisioner "local-exec" {
    when    = create
    command = "echo Random string is created. The string is ${self.result} "
    # interpreter = ["PowerShell", "-Command"]
    working_dir = "local-exec-output-files/"
  }
}

output "resource_code" {
  value = random_string.resource_code.result
}
