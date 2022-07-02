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
