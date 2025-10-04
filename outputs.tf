output "resource_group_name" {
  value = module.resource_group.rg_name
}

output "sql_server_name" {
  value = module.sql.sql_server_name
}

output "sql_db_name" {
  value = module.sql.sql_db_name
}
