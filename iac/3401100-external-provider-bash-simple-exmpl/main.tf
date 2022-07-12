
provider "azurerm" {
  features {}
}

data "external" "simple-jq-test" {

  program = ["bash", "./simple.sh"]

}

output "locationname" {
  value = data.external.simple-jq-test.result.arg1
}
