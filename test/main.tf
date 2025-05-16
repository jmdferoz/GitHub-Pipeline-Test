provider "azurerm" {
  features {}
}

module "vnet" {
  source              = "../Modules/Vnet"
  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnet_prefixes     = var.subnet_prefix
}

module "sql_db" {
  source              = "../Modules/db"
  resource_group_name = var.resource_group_name
  location            = var.location
  sql_server_name     = var.sql_server_name
  sql_admin_username  = var.sql_admin_username
  sql_admin_password  = var.sql_admin_password
  sql_db_name         = var.sql_db_name
}
