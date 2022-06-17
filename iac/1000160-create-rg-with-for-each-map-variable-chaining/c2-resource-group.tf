# Resource-1: Azure Resource Group
# dc - data center
resource "azurerm_resource_group" "myrgmap" {
  for_each = var.data_center_location
  name     = "vivek-${each.key}-map-rg"
  location = each.value
}

resource "azurerm_resource_group" "myrgmap_chainingset" {
  for_each = azurerm_resource_group.myrgmap # for_each chaining.
  name     = "vivek-${each.key}-${each.value.location}-map-chaining-rg"
  # location = "${each.value.location}"
  # The above and below are same
  location = each.value.location
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

output "instance_ids_chaining" {
  value = tomap({
    for k, inst in azurerm_resource_group.myrgmap_chainingset : k => inst.id
  })
}

output "instance_names_chaining" {
  value = tomap({
    for k, inst in azurerm_resource_group.myrgmap_chainingset : k => inst.name
  })
}
