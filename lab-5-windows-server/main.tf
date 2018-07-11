resource "aws_key_pair" "mykey" {
  key_name = "mykey"
  public_key = "${file("${var.path_to_public_key}")}"
}

resource "aws_instance" "win_example" {
  ami           = "${lookup(var.windows_server_2016_base_amis, var.aws_region)}"
  subnet_id = "${var.public_subnet_id}"
  associate_public_ip_address = true
  instance_type = "${var.instance_type}"
  tags = "${var.tags}"
  key_name = "${aws_key_pair.mykey.key_name}"
  vpc_security_group_ids = [
    "${var.terraform_client_security_group_id}"
  ]

  get_password_data = true

  user_data = <<EOF
<powershell>
winrm quickconfig -q
winrm set winrm/config/winrs '@{MaxMemoryPerShellMB="300"}'
winrm set winrm/config '@{MaxTimeoutms="1800000"}'
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
winrm set winrm/config/service/auth '@{Basic="true"}'

netsh advfirewall firewall add rule name="WinRM 5985" protocol=TCP dir=in localport=5985 action=allow
netsh advfirewall firewall add rule name="WinRM 5986" protocol=TCP dir=in localport=5986 action=allow

net stop winrm
sc.exe config winrm start=auto
net start winrm
</powershell>
EOF

  provisioner "file" {
    source = "test.txt"
    destination = "C:/test.txt"
  }
  connection {
    type = "winrm"
    host = "${self.private_ip}"
    timeout = "4m"
    user = "Administrator"
    password = "${rsadecrypt(self.password_data,file("${var.path_to_private_key}"))}"
  }
}
