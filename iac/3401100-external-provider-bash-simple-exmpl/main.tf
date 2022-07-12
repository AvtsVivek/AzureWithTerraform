
provider "azurerm" {
  features {}
}

data "external" "ssh_key_generator" {
  #program = ["bash", ".${path.module}/simple.sh"]
  program = ["bash", "./simple.sh"]

  query = {
    key_name        = "terraformdemo"
    key_environment = "dev"
  }
}
