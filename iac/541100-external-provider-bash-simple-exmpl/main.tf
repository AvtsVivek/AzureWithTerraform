
provider "azurerm" {
  features {}
}

data "external" "simple-jq-test" {

# may be we should use path.module like this.
  # program = ["bash", "${path.module}/simple.sh"]
  program = ["bash", "./simple.sh"]

}

output "locationname" {
  value = data.external.simple-jq-test.result.arg1
}
