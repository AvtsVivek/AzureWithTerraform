# Input Variables

# 1. Environment Name
variable "environment" {
  description = "Environment Name"
  type        = set(string)
  default     = ["dev1", "qa1", "staging1", "prod1"]
}

# 2. Resource Group Name
variable "resoure_group_name_suffix" {
  description = "Resource Group Name Suffix"
  type        = string
  default     = "rg"
}

# 3. Resource Group Location
variable "resoure_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "East US"
}

