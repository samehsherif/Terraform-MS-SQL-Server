resource "azurerm_mssql_server" "sqlserver" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  administrator_login          = var.sql_admin_user
  administrator_login_password = var.sql_admin_password
  version                      = "12.0"
}

resource "azurerm_mssql_database" "sqldb" {
  name      = var.sql_db_name
  server_id = azurerm_mssql_server.sqlserver.id
  sku_name  = "S0" # Basic Tier
}

output "sql_server_name" {
  value = azurerm_mssql_server.sqlserver.name
}

output "sql_db_name" {
  value = azurerm_mssql_database.sqldb.name
}
