
variable "resource_group_name" {
  # For this demo, use environment variable to set the vars.
  # default     = "vivek-rg"
  type        = string
  description = "Resource group name."

  validation {
    condition     = length(var.resource_group_name) > 5
    error_message = "The resource_name must be greater than 5 characters in length."
  }

  validation {
    condition     = length(var.resource_group_name) < 9
    error_message = "The resource_name must be less than 9 characters in length."
  }
}

variable "somevar" {
  # For this demo, use environment variable to set the vars.
  # default     = "vivek-rg"
  type        = string
  description = "Some variable."
  validation {
    condition     = 5 < length(var.somevar) && length(var.somevar) < 9
    error_message = "The resource_name must be greater than 5 characters and less then 9 in length."
  }

}
