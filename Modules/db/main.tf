resource "azurerm_mssql_server" "sql_server" {
  name                         = "sqlserverdemo123"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_user
  administrator_login_password = var.sql_password
}

resource "azurerm_mssql_database" "sql_db" {
  name      = "demodatabase"
  server_id = azurerm_mssql_server.sql_server.id  
  sku_name  = "Basic"
}
