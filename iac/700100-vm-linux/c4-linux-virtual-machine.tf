# Resource: Azure Linux Virtual Machine
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine#example-usage
# The file function used below reads the contents of a file at the given path and returns them as a string.
# The filebase64 reads the contents of a file at the given path and returns them as a base64-encoded string.
# https://www.terraform.io/docs/language/functions/file.html
# https://www.terraform.io/docs/language/functions/filebase64.html

resource "azurerm_linux_virtual_machine" "mylinuxvm" {
  name                  = "vivek-1-linuxvm"
  computer_name         = "vivek-1-linuxvm" # Hostname of the VM
  resource_group_name   = azurerm_resource_group.myrg.name
  location              = azurerm_resource_group.myrg.location
  size                  = "Standard_DS1_v2"
  admin_username        = "azureuser"
  network_interface_ids = [azurerm_network_interface.myvmnic.id]
  admin_ssh_key {
    username   = "azureuser"
    public_key = file("${path.module}/ssh-keys/terraform-azure.pub")
  }
  os_disk {
    name                 = "vivek-1-osdisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    # storage_account_type = "D2ads_v5"
  }

  source_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "83-gen2"

    # publisher = "Canonical"
    # offer     = "UbuntuServer"
    # sku       = "18.04-LTS"
    version = "latest"
  }
  custom_data = filebase64("${path.module}/app-scripts/app1-cloud-init.txt")
}
