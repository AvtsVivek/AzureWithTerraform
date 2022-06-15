locals {
  name = 1
}

variable in {
  default = 2
}

variable fruits {
  default = ["apple", "banana", "pine apple", "grape", "strawberry"]
}

variable cloud-providers {
    default = [
        {
            name = "Azure",
            id = "1"
        },
        {
            name = "AWS"
            id = "2"
        },
        {
            name = "GCP"
            id = "3"
        }
    ]
}
