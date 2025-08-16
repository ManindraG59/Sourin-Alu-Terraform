resource "azurerm_resource_group" "example" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_storage_account" "sa" {
  name                     = "tfstateacct"
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "sc" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}
