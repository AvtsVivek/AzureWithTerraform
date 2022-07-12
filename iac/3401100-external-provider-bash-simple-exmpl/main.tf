
provider "azurerm" {
  features {}
}

data "external" "simple-jq-test" {

  program = ["bash", "./simple.sh"]

}
