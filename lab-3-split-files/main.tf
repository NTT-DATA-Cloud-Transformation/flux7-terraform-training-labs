resource "aws_instance" "rhel_instance" {
  ami           = "${lookup(var.amis, var.aws_region)}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${var.public_subnet_id}"
  tags          = "${var.tags}"
}
