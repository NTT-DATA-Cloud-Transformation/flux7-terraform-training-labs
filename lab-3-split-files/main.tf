resource "aws_instance" "rhel_instance" { 
  ami           = "${lookup(var.amis, var.aws_region)}"
  instance_type = "t2.small"
}
