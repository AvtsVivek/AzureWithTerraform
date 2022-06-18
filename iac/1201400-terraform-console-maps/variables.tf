variable "images" {
  description = "your description here"
  type        = map(string)

  default = {
    1 = "one"
    2 = "two"
  }
}

