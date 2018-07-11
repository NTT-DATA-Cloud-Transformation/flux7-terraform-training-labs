variable "aws_region" {}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = "map"
}

variable "rhel_7_5_amis" {
  description = "A map of all RHEL 7.5 AMIs per region"
  type = "map"
}

variable "windows_server_2016_base_amis" { 
  description = "A map of all Windows Server 2016 Base AMIs per region"
  type = "map"
}


variable "instance_type" {
  description = "EC2 instance type"
}

variable "path_to_private_key" {
  description = "path to the private that will be used to authenticate to the EC2 instances to provision"
}

variable "terraform_client_security_group_id" {
  description = "security group ID of the instance running the terraform client"
}

variable "public_subnet_id" {
  description = "Public Subnet ID"
}

variable "path_to_public_key" {
  description = "path to public key that will be stored on the EC2 instances to provision" 
}

variable "instance_username" {
  description = "username that will be used to authentication to the EC2 instances to provision"
}

variable "windows_bootstrap_username" {
  description = "Windows bootstrap username"
}

#variable "windows_bootstrap_password" {
#  description = "Windows bootstrap password"
#}
