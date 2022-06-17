# Resource-1: Azure Resource Group
# dc - data center
resource "azurerm_resource_group" "myrgmap" {
  for_each = {
    dc1apps = "centralindia"
    dc2apps = "westindia"
    dc3apps = "southindia"
  }
  name     = "vivek-${each.key}-map-rg"
  location = each.value
}

output "instance_ids" {
  value = tomap({
    for k, inst in azurerm_resource_group.myrgmap : k => inst.id
  })
}

output "instance_names" {
  value = tomap({
    for k, inst in azurerm_resource_group.myrgmap : k => inst.name
  })
}