provider "aws" {
  region = var.region
}

module "security_group" {
  source = "./security_group"
}

module "load_balancer" {
  source = "./modules/load_balancer"

  vpc_id = "vpc-0b5bc70d7fc684de6"  # Provide your VPC ID here
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  security_groups = [var.security_group_name]  # Using the security group name variable here

  user_data = file("${path.module}/script.sh")
  
  tags = {
    Name = "Workflow-Backend"
  }
}
