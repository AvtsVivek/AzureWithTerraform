# dc - data center location
variable "data_center_location" {
  type = map(string)

  default = {
    dc1apps = "centralindia"
    dc2apps = "westindia"
    dc3apps = "southindia"
  }

}