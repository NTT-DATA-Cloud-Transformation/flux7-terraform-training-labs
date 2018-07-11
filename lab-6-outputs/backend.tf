terraform {
  backend "s3" {
    bucket  = "tftraining-shared-services-devops-us-east-1"
    key     = "terraform/backend/apps/app1/dev/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
