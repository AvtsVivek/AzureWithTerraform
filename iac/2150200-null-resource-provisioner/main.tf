terraform {
  required_version = ">= 0.14.0"
}

resource "null_resource" "null_resource_simple" {

  triggers = {
    always-update = timestamp()
  }

  provisioner "local-exec" {
    when        = create
    command     = "Get-Date > provisioner-output.txt"
    interpreter = ["PowerShell", "-Command"]
    working_dir = "local-exec-output-files/"
  }

}

output "SomeOutputVar" {
  value = null_resource.null_resource_simple
}