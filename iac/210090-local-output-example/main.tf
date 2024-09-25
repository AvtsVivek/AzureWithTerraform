# Terraform settings Block

locals {
  schemas = [
    "PRIVATE",
    "PUBLIC",
    "MY_SCHEMA",
  ]
  privileges = [
    "CREATE TABLE",
    "CREATE VIEW",
    "USAGE",
  ]

}


output "SchemaOutputLocal" {
  value = local.schemas
}

output "PrivilegeOutputLocal" {
  value = local.privileges
}