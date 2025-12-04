// Storage Account and Container for Website Hosting


resource "azurerm_storage_account" "websitestorage" {
  name                     = "wwwwruuppincom"
  resource_group_name      = azurerm_resource_group.resume_resources.name
  location                 = azurerm_resource_group.resume_resources.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
}

resource "azurerm_storage_container" "websitecontainer" {
  name                  = "websitecontainer"
  storage_account_id = azurerm_storage_account.websitestorage.id
  container_access_type = "blob"
  depends_on = [ 
    azurerm_storage_account.websitestorage 
    ]
}