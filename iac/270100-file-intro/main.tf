# Terraform settings Block

locals {
  file-content = file("${path.module}/some-folder/some-text-file.txt")
  file-content-base64 = file("${path.module}/some-folder/some-text-file.txt")
}

output "SomeOutputVar" {
  value = local.file-content
}

output "SomeOutputVarBase64" {
  value = local.file-content-base64
}
