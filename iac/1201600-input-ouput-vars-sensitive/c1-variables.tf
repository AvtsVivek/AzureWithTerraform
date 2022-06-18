
variable "images" {
  description = "Images variables"
  type        = string
  default     = "some_image"
  sensitive   = true
}


output "SomeOutputVar" {
  sensitive = true
  value     = var.images
}
