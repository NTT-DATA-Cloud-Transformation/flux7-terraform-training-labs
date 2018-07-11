variable "aws_region" {}

variable "amis" {
  description = "A map of all AMIs per region"
  type = "map"
}

