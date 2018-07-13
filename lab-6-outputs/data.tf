data "aws_ami" "rhel_7_5_latest" {
  most_recent      = true

  filter {
    name   = "name"
    values = ["RHEL-7.?*GA*"]
  }

  owners     = ["309956199498"]
}
