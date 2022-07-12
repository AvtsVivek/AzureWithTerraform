# locals {
#   ports = [22, 80, 8080, 8081, 7080, 7081]
# }

locals {
  rules_ports_with_description = [
    {
      port        = 22
      description = "Ingress rules for port 22"
    },
    {
      port        = 80
      description = "Ingress rules for port 80"
    },
    {
      port        = 8080
      description = "Ingress rules for port 8080"
    },
    {
      port        = 8081
      description = "Ingress rules for port 8081"
    },
    {
      port        = 7080
      description = "Ingress rules for port 7080"
    },
    {
      port        = 7081
      description = "Ingress rules for port 7081"
    },
    {
      port        = 443
      description = "Ingress rules for port 443"
  }]
}