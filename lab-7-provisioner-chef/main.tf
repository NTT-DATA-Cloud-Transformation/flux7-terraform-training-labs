resource "aws_key_pair" "mykey" {
  key_name = "mykey"
  public_key = "${file("${var.path_to_public_key}")}"
}

resource "aws_instance" "rhel_instance" { 
  ami           = "${lookup(var.amis, var.aws_region)}"
  subnet_id 	= "${var.public_subnet_id}"
  associate_public_ip_address = true
  instance_type = "${var.instance_type}"
  tags 		= "${var.tags}"


  key_name 	= "${aws_key_pair.mykey.key_name}"
 
  vpc_security_group_ids = [
    "${var.terraform_client_security_group_id}"
  ]

  provisioner "chef" {
    node_name       = "mbuchner"
    server_url      = "https://api.chef.io/organizations/flux7demo"
    user_name 	    = "mbuchner"
    user_key        = "${file("./mbuchner.pem")}"
    ssl_verify_mode = ":verify_none"
    run_list	    = ["recipe[apache2]"] #phpapp?
    recreate_client = true
  }

  connection {
    user = "${var.instance_username}"
    private_key = "${file("${var.path_to_private_key}")}"
    host = "${self.private_ip}"
  }

}
