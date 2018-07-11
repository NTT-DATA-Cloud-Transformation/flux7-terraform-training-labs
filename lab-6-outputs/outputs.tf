output "my_app_public_ip" {
  value = "${aws_instance.rhel_instance.public_ip}"
}
