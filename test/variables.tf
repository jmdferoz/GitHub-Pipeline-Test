variable "resource_group_name" {}

variable "location" {}

variable "vnet_name" {}

variable "address_space" {
  type = list(string)
}

variable "subnet_name" {}

variable "subnet_prefix" {}

variable "sql_server_name" {}

variable "sql_db_name" {}

variable "sql_admin_user" {}

variable "sql_password" {
  sensitive = true
}