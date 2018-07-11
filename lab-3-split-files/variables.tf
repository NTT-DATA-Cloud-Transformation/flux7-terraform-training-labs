variable "aws_region" {}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = "map"
}

variable "amis" {
  description = "A map of all AMIs per region"
  type = "map"
}

variable "public_subnet_id" {
  description = "A public subnet"
}

variable "instance_type" {
  description = "EC2 instance type"
}
