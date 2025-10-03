# Resource Group Module
module "rg" {
  source   = "./modules/resource_group"
  rg_name  = var.resource_group_name
  location = var.location
}

# SQL Module
module "sql" {
  source     = "./modules/sql"
  rg_name    = module.rg.rg_name
  location   = var.location
  sql_server = var.sql_server_name
  admin_user = var.sql_admin_user
  db_name    = var.sql_db_name
}
