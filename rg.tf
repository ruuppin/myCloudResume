resource "azurerm_resource_group" "resume_resources" {
  name     = var.resource_group_name
  location = var.locationweu
  
}

## Tags
// Tags for all resources