variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "sql_server" {
  type = string
}

variable "admin_user" {
  type = string
}

variable "db_name" {
  type = string
}

# Random password
resource "random_password" "sql_admin_pwd" {
  length           = 16
  special          = true
  override_special = "_%@"
}

# SQL Server
resource "azurerm_mssql_server" "sqlserver" {
  name                         = var.sql_server
  resource_group_name          = var.rg_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_user
  administrator_login_password = random_password.sql_admin_pwd.result
}

# SQL Database
resource "azurerm_mssql_database" "sqldb" {
  name      = var.db_name
  server_id = azurerm_mssql_server.sqlserver.id
  sku_name  = "S0"
}

# Outputs
output "sql_server_name" {
  value = azurerm_mssql_server.sqlserver.name
}

output "sql_db_name" {
  value = azurerm_mssql_database.sqldb.name
}

output "sql_admin_password" {
  value     = random_password.sql_admin_pwd.result
  sensitive = true
}
