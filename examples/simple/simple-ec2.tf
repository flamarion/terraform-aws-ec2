provider "aws" {
  version = "~> 2.59"
  region  = "eu-central-1"
}


module "ec2" {
  source                      = "../"
  ami                         = "ami-07d1bb89ff2dd50fe"
  subnet_id                   = "subnet_id"
  instance_type               = "m5.large"
  key_name                    = "key-name"
  user_data                   = ""
  vpc_security_group_ids      = ["sg-id"]
  associate_public_ip_address = true
  iam_instance_profile        = ""
  root_volume_size            = 100
  ec2_tags = {
    "Name" = "Owner"
    "Env"  = "Prod"
  }
}