resource "azurerm_resource_group" "RG" {
  for_each = {
    rg1 = "centralindia"
    rg2 = "southindia"
    rg3 = "westindia"
  }
  name     = "dhondu-${each.key}"
  location = each.value
}