variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "sql_server_name" {
  type = string
}

variable "sql_admin_user" {
  type = string
}

variable "sql_admin_password" {
  type      = string
  sensitive = true
}

variable "sql_db_name" {
  type = string
}
