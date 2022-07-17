
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

  # Nested loop over both lists, and flatten the result.
  schema_privileges = flatten([
    for schema in local.schemas : [
      for privilege in local.privileges : {
        privilege = privilege
        schema    = schema
      }
    ]
  ])
}

output "print_the_local_schemas" {
  value = [for schema in local.schemas : schema]
}

output "print_the_local_privileges" {
  value = [for privilege in local.privileges : privilege]
}

output "print_the_local_schema_privileges" {
  value = [for schema_privilege in local.schema_privileges : schema_privilege]
}