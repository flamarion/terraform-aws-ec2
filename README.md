# AWS EC2 Instance Module

This module is intended to create a Single AWS EC2 Instances within a VPC.

The module also allow the attachment of a single EBS volume to the instance.

This module doesn't work to create instances in default VPC or attache EBS volumes.

If you need more detailed configuration for a EC2 Instances I recommend you use the official terraform module for AWS EC2

https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws

## Input Variables

|Name|Type|Mandatory|Default Value|Description|
|----|----|---------|-------------|-----------|
|ami|string|yes|ami-01f629e0600d93cef|AMI used to build the instance|
|subnet_id|string|yes|""|Subnet ID withing a VPC|
|instance_type|string|yes|m5.large|EC2 Instance flavor|
|key_name|string|yes|""|SSH Public key used to connect to the instance|
|user_data|string|no|""|Script or Template to be injected via cloud-init|
|vpc_security_group_ids|list(string)|[]|Security Group list|
|root_volume_size|number|no|100|Root disk size|
|ec2_tags|map(string)|no|{}|Map of tags in formate key value|
|owner|string|no|"foo"|String to prefix default tags and resource name|
|associate_public_ip_address|bool|no|true|Attach or not a Public ip address|
|iam_instance_profile|string|no|""|Instance profile name to attach if any|
|add_ebs|bool|no|false|Add a single EBS volume to the EC2 instance|
|size|number|no|50|EBS volume size|
|type|string|no|"gp2"|EBS volume type|
|ebs_tags|map(string)|no|{}|Map of string tags to be attached to the EBS volume|

## Outputs

The outputs available are the following

|Name|Description|
|----|-----------|
|instance_id| Instance ID|
|public_ip|Instance Public IP if used in the public subnet|
|public_dns|Instance Public FQDN|

## Example

The full example can be found in [Examples](./examples) directory.
