# Call our Custom Terraform Module which we built earlier

module "azure_static_website" {

  # https://docs.github.com/en/authentication/connecting-to-github-with-ssh
  # You can use, this or the following.
  # source = "github.com/AvtsVivek/terraform-azurerm-staticwebstitepublic"
  # source = "git@github.com:AvtsVivek/terraform-azurerm-staticwebstitepublic.git"
  # source = "git::https://github.com/AvtsVivek/terraform-azurerm-staticwebstitepublic.git"
  source = "git::https://github.com/AvtsVivek/terraform-azurerm-staticwebstitepublic.git?ref=2.0.0"

  # version = "1.0.0"
  # Resource Group
  location            = "eastus"
  resource_group_name = "myrg1"

  # Storage Account
  storage_account_name              = "staticwebsite"
  storage_account_tier              = "Standard"
  storage_account_replication_type  = "LRS"
  storage_account_kind              = "StorageV2"
  static_website_index_document     = "index.html"
  static_website_error_404_document = "error.html"
  static_files_list                 = ["error.html", "index.html"]
}

