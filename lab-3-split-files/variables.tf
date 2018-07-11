variable "aws_region" {}

variable "amis" {
  description = "A map of all AMIs per region"
  type = "map"
}

varible "public_subnet_id" {
  description = "A public subnet"
}
