provider "aws" {
  region = var.region
}

module "s3-webappapp" {
  source  = "app.terraform.io/Gooner/s3-webappapp/aws"
  name    = var.name
  region  = var.region
  prefix  = var.prefix
  version = "1.0.0"
}


