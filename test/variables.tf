variable "resource_group_name" {}

variable "location" {}

variable "vnet_name" {}

variable "address_space" {
  type = list(string)
}

variable "subnet_name" {}

variable "subnet_prefix" {
  type = list(string)
}
variable "sql_server_name" {}

variable "sql_db_name" {}

variable "sql_admin_username" {}

variable "sql_admin_password" {
  sensitive = true
}
