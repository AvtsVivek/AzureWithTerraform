
data "external" "simple-jq-test" {

  # may be we should use path.module like this.
  # program = ["bash", "${path.module}/script-dir/ssh-key-gen.sh"]
  program = ["bash", "${path.module}/script-dir/ssh-key-gen.sh"]

  query = {
    key_name        = "terraformdemo"
    key_environment = "dev"
  }
}

output "name" {
  value = data.external.simple-jq-test.result.name
}

output "public_key_contents" {
  value = data.external.simple-jq-test.result.public_key_contents
}

output "private_key_contents" {
  value = data.external.simple-jq-test.result.private_key_contents
}

output "environment" {
  value = data.external.simple-jq-test.result.environment
}

output "ssh_key_file" {
  value = data.external.simple-jq-test.result.ssh_key_file
}

output "script_dir" {
  value = data.external.simple-jq-test.result.script_dir
}

output "public_key_file_name" {
  value = data.external.simple-jq-test.result.public_key_file_name
}

