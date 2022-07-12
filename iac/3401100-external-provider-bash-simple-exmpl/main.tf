
provider "azurerm" {
  features {}
}

data "external" "simple-jq" {
  #program = ["bash", ".${path.module}/simple.sh"]
  program = ["bash", "./simple.sh"]

  query = {
    key_name        = "terraformdemo"
    key_environment = "dev"
  }
}
