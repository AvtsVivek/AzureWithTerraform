
variable "resource_group_name" {
  # For this demo, use environment variable to set the vars.
  # default     = "vivek-rg"
  type        = string
  description = "Resource group name."
}

variable "second_resource_group_name" {
  # For this demo, use environment variable to set the vars.
  # default     = "vivek-rg"
  type        = string
  description = "Resource group name."
}


variable "allowed_resource_group_location_list" {
  description = "Allowed Resource Group Location List"
  type        = list(string)
  default     = ["eastus", "eastus2"]
}

variable "resource_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "eastus"
  validation {
    #condition = var.resoure_group_location == "eastus" || var.resoure_group_location =="eastus2"
    # The following is not wokring. does not work. 

    # condition    = contains(var.allowed_resource_group_location_list, var.resoure_group_location)
    #│ Error: Invalid reference in variable validation
    #│
    #│   on c4-variables.tf line 32, in variable "resoure_group_location":
    #│   32:     condition     = contains(var.allowed_resource_group_location_list, var.resoure_group_location)
    #│
    #│ The condition for variable "resoure_group_location" can only refer to the variable itself, using var.resoure_group_location.

    condition = contains(["eastus", "eastus2"], var.resource_group_location)

    # The following also works.

    # condition = var.resoure_group_location == "eastus" || var.resoure_group_location =="eastus2"
    error_message = "We only allow Resources to be created in eastus or eastus2 locations."
    #condition = can(regex("india$", var.resoure_group_location))
    #error_message = "We only allow Resources to be created in westindia or southindia locations."
    #condition = can(regex("india$", var.resoure_group_location))
    #error_message = "We only allow Resources to be created in westindia or southindia locations."
  }
}

variable "second_resource_group_location" {
  description = "Second Resource Group Location"
  type        = string
  default     = "centralindia"
  validation {
    condition     = can(regex("india$", var.second_resource_group_location))
    error_message = "We only allow Resources to be created in westindia or southindia locations."
  }
}
