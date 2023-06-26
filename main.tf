provider "azurerm" {
   skip_provider_registration = true
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = "my-resource-group"
  location = "eastus"
}

resource "azurerm_storage_account" "st" {
  name                     = "mystorageaccounte"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}