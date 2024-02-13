// variable.tf

variable "region" {
  description = "The AWS region where the EC2 instance will be launched."
  default     = "us-east-1"
}

variable "ami" {
  description = "The ID of the Amazon Machine Image (AMI) to use for the EC2 instance."
  default     = "ami-0c7217cdde317cfec"  # Example AMI ID, replace with your desired AMI ID
}

variable "instance_type" {
  description = "The type of EC2 instance to launch."
  default     = "t2.micro"
}

variable "key_name" {
  description = "The name of the EC2 key pair to associate with the instance."
  default     = "virginia_key"  # Replace with your actual key pair name
}

variable "security_group_name" {
  description = "The name of the EC2 security group to associate with the instance."
  default     = "workflow_sg"  # Replace with your actual security group name
}

