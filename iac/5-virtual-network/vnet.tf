# create virtual network
resource "azurerm_virtual_network" "myvnet" {
  name                = "vivek-1-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
  tags = {
    "name" = "vivek-1-vnet"
  }
}

# Resource-3: Create Subnet
resource "azurerm_subnet" "mysubnet" {
  name                 = "vivek-1mysubnet"
  resource_group_name  = azurerm_resource_group.myrg.name
  virtual_network_name = azurerm_virtual_network.myvnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

# Resource-4: Create Public IP Address
resource "azurerm_public_ip" "mypublicip" {
  name                = "vivek-1-publicip"
  resource_group_name = azurerm_resource_group.myrg.name
  location            = azurerm_resource_group.myrg.location
  allocation_method   = "Static"
  tags = {
    environment = "Dev"
  }
}

# Resource-5: Create Network Interface
resource "azurerm_network_interface" "myvmnic" {
  name                = "vivek-vmnic"
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.mysubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.mypublicip.id
  }
}

