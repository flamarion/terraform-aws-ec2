
resource "aws_instance" "ec2" {
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
  tags = var.ec2_tags
}

resource "aws_ebs_volume" "ebs" {
  count             = var.add_ebs ? 1 : 0
  availability_zone = aws_instance.ec2.availability_zone
  size              = var.size
  type              = var.type
  tags              = var.ebs_tags
}

resource "aws_volume_attachment" "attach" {
  count       = var.add_ebs ? 1 : 0
  device_name = "/dev/sdf"
  instance_id = aws_instance.ec2.id
  volume_id   = aws_ebs_volume.ebs[0].id
}