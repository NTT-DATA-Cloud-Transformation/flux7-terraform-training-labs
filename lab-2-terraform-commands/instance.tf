provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-east-1"
}

resource "aws_instance" "example" {

#us-east-1      ami-6871a115  
#us-east-2      ami-03291866  
#us-west-1      ami-18726478  
#us-west-2      ami-28e07e50  
#ca-central-1   ami-49f0762d  
#eu-central-1   ami-c86c3f23  
#eu-west-1      ami-7c491f05  
#eu-west-2      ami-7c1bfd1b  
#eu-west-3      ami-5026902d  
#sa-east-1      ami-b0b7e3dc  
#ap-southeast-1 ami-76144b0a  

  ami           = "ami-0d729a60"
  instance_type = "t2.micro"
}
