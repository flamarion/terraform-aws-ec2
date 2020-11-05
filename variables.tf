variable "instance_count" {
  description = "Number of instances to create"
  type        = number
  default     = 1
}
variable "ami" {
  description = "AWS Image ID"
  type        = string
  default     = "ami-01f629e0600d93cef"
}
variable "subnet_id" {
  description = "VPC Subnet ID"
  type        = string
  default     = ""
}
variable "instance_type" {
  description = "Instance Size"
  type        = string
  default     = "m5.large"
}
variable "key_name" {
  description = "SSH Key name"
  type        = string
  default     = ""
}
variable "user_data" {
  description = "User data to be injected via cloud-init"
  type        = string
  default     = ""
}
variable "vpc_security_group_ids" {
  description = "List of VPC security group id"
  type        = list(string)
  default     = []
}
variable "root_volume_size" {
  description = "Main disk size"
  type        = number
  default     = 100
}
variable "tags" {
  description = "Map of tags"
  type        = map(string)
  default     = {}
}

variable "owner" {
  description = "String to be used wherever necessary"
  type        = string
  default     = "foo"
}

variable "associate_public_ip_address" {
  description = "Attach or not a public ip address"
  type        = bool
  default     = true
}

variable "iam_instance_profile" {
  description = "Attache an IAM instance provile"
  type        = string
  default     = ""
}

