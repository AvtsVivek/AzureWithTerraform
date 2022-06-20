# Input Variables

# 1. Business Unit Name
variable "business_unit" {
  description = "Business Unit Name"
  type        = string
  default     = "hr"
}

# 2. Environment Name
variable "environment" {
  description = "Environment Name"
  type        = set(string)
  default     = ["dev1", "qa1", "staging1", "prod1"]
}

# 3. Resource Group Name
variable "resoure_group_name_suffix" {
  description = "Resource Group Name"
  type        = string
  default     = "myrg"
}
# 4. Resource Group Location
variable "resoure_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "centralindia"
}

# 5. Virtual Network Name
variable "virtual_network_name" {
  description = "Virtual Network Name"
  type        = string
  default     = "myvnet"
}


####################################################
# variable "vm_names" {
#   default     = ["vm1", "vm2"]
#   description = "names of the virtual machines to be created"
# }

# variable "resource_group_location" {
#   default     = "centralindia"
#   description = "Location of the resource group."
# }

# variable "resource_group_name" {
#   default     = "vivek-multiple-linux-vm-rg"
#   description = "Resource group name."
# }

# # Count will not be used here.
# variable "count_vms" {
#   default     = 2
#   description = "Number of vm resources to be cteated."
# }

###########################################################\




