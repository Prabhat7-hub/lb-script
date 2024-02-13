resource "aws_security_group" "example" {
  name        = "workflow_sg"
  description = "Allow inbound traffic on port 22 and port 80"

  dynamic "ingress" {
    for_each = [22,80,443,3000]
    iterator = port
    content {
      description = "TLS from VPC"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
