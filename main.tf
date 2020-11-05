terraform {
  required_version = "~> 0.12"

  required_providers {
    aws = "~> 2.59"
  }
}

resource "aws_instance" "ec2" {
  count                       = var.instance_count
  ami                         = var.ami
  subnet_id                   = var.subnet_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  user_data                   = var.user_data
  vpc_security_group_ids      = var.vpc_security_group_ids
  associate_public_ip_address = var.associate_public_ip_address
  iam_instance_profile        = var.iam_instance_profile
  root_block_device {
    volume_size = var.root_volume_size
  }
  tags = var.tags
}
