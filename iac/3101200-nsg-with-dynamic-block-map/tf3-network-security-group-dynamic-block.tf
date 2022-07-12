# Define Ports as a list in locals block
locals {
  ports = [22, 80, 8080, 8081, 7080, 7081]
}

locals {
  rules_ports_with_description = [
    {
      port        = 22
      description = "Ingress rules for port 22"
    },
    {
      port        = 80
      description = "Ingress rules for port 80"
    },
    {
      port        = 8080
      description = "Ingress rules for port 8080"
    },
    {
      port        = 8081
      description = "Ingress rules for port 8081"
    },
    {
      port        = 7080
      description = "Ingress rules for port 7080"
    },
    {
      port        = 7081
      description = "Ingress rules for port 7081"
    },
    {
      port        = 443
      description = "Ingress rules for port 443"
  }]
}

# Resource-2: Create Network Security Group
resource "azurerm_network_security_group" "mynsg2" {
  name                = "mynsg-2"
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name

  dynamic "security_rule" {
    for_each = local.rules_ports_with_description
    content {
      name = "inbound-rule-${security_rule.key}"
      #name                       = "inbound-rule-${security_rule.value}"
      description                = "Inbound Rule ${security_rule.value.description}"
      priority                   = sum([100, security_rule.key])
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = security_rule.value.port
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  }

  security_rule {
    name                       = "Outbound-rule-1"
    description                = "Outbound Rule"
    priority                   = 102
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  tags = {
    environment = "Dev"
  }
}
