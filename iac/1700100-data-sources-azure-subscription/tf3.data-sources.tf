
variable "simple_var" {
  default = "default"
  type    = string
}


# Datasources
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription
data "azurerm_subscription" "current" {

}

# ## TEST DATASOURCES using OUTPUTS
# # 1. My Current Subscription Display Name
output "current_subscription_display_name" {
  value = data.azurerm_subscription.current.display_name
}

# 2. My Current Subscription Id
output "current_subscription_id" {
  value = data.azurerm_subscription.current.subscription_id
}

# 3. My Current Subscription Spending Limit
output "current_subscription_tenant_id" {
  value = data.azurerm_subscription.current.tenant_id
}

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription#attributes-reference

  