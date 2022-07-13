
provider "azurerm" {
  features {}
}

data "external" "simple-jq-test" {

  program = ["bash", "./ssh-key-gen.sh"]

  query = {
    key_name        = "terraformdemo"
    key_environment = "dev"
  }
}

output "locationname" {
  value = data.external.simple-jq-test.result.name
}

output "locationname1" {
  value = data.external.simple-jq-test.result.public_key_contents
}

output "locationname2" {
  value = data.external.simple-jq-test.result.environment
}

output "locationname4" {
  value = data.external.simple-jq-test.result.ssh_key_file
}