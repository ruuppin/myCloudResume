resource "azurerm_dns_zone" "ruuppin" {
  name                = "ruuppin.com"
  resource_group_name = azurerm_resource_group.resume_resources.name 

}

resource "azurerm_dns_a_record" "www" {
  name                = "www"
  zone_name           = azurerm_dns_zone.ruuppin.name
  resource_group_name = azurerm_resource_group.resume_resources.name
  ttl                 = 300
  records             = ["10.10.1.1"]
  
}