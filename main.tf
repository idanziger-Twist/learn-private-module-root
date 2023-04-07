provider "aws" {
  region = var.region
  assume_role {
    role_arn = "arn:aws:iam::176102690181:user/terraform-user"
}
  }
  


module "s3-webapp" {
  source  = "app.terraform.io/Gooner/s3-webapp/aws"
  name    = var.name
  region  = var.region
  prefix  = var.prefix
  version = "1.0.0"
}


