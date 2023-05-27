resource "aws_security_group" "sg" {
  name        = "security-group-aws_web"
  description = "Allow TLS inbound traffic"

  dynamic "ingress" {
    for_each = var.port
    content {
    description      = "TLS from VPC"
    from_port        = ingress.value
    to_port          = ingress.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
