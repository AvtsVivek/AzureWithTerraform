
variable "tuple-sample" {
  type = tuple([string, number, bool])
}


output "SomeinstancesOutputVar" {
  value = var.tuple-sample
}