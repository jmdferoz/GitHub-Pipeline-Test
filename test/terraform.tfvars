resource_group_name = "myResourceGroup"
location            = "East US 2"

# VNet details
vnet_name      = "vnet-dev"
address_space  = ["10.0.0.0/16"]
subnet_name    = "subnet-dev"
subnet_prefix  = ["10.0.1.0/24"]

# SQL Server & Database details
sql_server_name = "sqlserverdev01"
sql_db_name     = "devsqldb"
