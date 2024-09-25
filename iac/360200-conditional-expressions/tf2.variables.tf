
variable "simple_var" {
  default = "default"
  type    = string
}

variable "resoure_group_name" {
  default = "conditional-rg"
  type    = string
}

# 4. Resource Group Location
variable "resoure_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "centralindia"
}
  