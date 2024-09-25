
variable "instances" {
  description = "value of instances"
  type = list(object({
    type  = string # removed commas since you specified object type
    count = number # fixed from string type
    tags  = map(string)
  }))
}



output "SomeinstancesOutputVar" {
  value = var.instances
}