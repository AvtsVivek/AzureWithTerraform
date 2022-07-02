# Terraform settings Block

terraform {
  required_version = ">= 0.14.0"
}

resource "null_resource" "null_resource_simple" {
  provisioner "local-exec" {
    command = "echo Hello World"
  }
}

resource "null_resource" "cluster" {

  # provisioner "remote-exec" {
  #   # Bootstrap script called with private_ip of each node in the cluster
  #   inline = [
  #     "bootstrap-cluster.sh ${join(" ", aws_instance.cluster.*.private_ip)}",
  #   ]
  # }

  provisioner "local-exec" {
    when        = create
    command     = "Get-Date > provisioner-output.txt"
    interpreter = ["PowerShell", "-Command"]
  }
}
