module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "sql" {
  source              = "./modules/sql"
  resource_group_name = module.resource_group.rg_name
  location            = var.location
  sql_server_name     = var.sql_server_name
  sql_admin_user      = var.sql_admin_user
  sql_admin_password  = var.sql_admin_password
  sql_db_name         = var.sql_db_name
}
