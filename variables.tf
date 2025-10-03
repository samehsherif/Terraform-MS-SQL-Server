variable "resource_group_name" {
  type    = string
  default = "rg-demo"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "sql_server_name" {
  type    = string
  default = "demo-sqlserver-001"
}

variable "sql_admin_user" {
  type    = string
  default = "sqladminuser"
}

variable "sql_db_name" {
  type    = string
  default = "demodb"
}
