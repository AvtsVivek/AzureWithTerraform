variable "object-type-var" {
  description = "your description here"
  type = object({
    location       = string
    size           = string
    instance_count = number
  })
}

variable "instances" {
  type = list(object({
    type  = string # removed commas since you specified object type
    count = number # fixed from string type
    tags  = map(string)
  }))
}

