This is based on the follownig sample.
https://github.com/stacksimplify/hashicorp-certified-terraform-associate-on-azure/tree/main/08-Providers-Dependency-Lock-File

This gives us some basic idea of how the dependency lock file works.

Not able to run this sample.

When I execute the command, terraform plan -out main.tfplan, I get the following error

Error: Error building AzureRM Client: Error populating Client ID from the Azure CLI: No Authorization Tokens were found - please ensure the Azure CLI is installed and then log-in with `az login`.
│
│   with provider["registry.terraform.io/hashicorp/azurerm"],
│   on main.tf line 19, in provider "azurerm":
│   19: provider "azurerm" {

So leaving it now.
