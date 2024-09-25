variable "resource_group_name" {
  default     = "vivek-terraform-simple-rg"
  description = "Resource Group name"
}

variable "resource_group_location" {
  default     = "centralindia"
  description = "Location of the resource group."
}

variable "resource_group_name_location" {
  description = "Name and loction of the resource group along with tags."
  type = object({
    location = string
    name     = string
    tags     = map(string)
  })
}


