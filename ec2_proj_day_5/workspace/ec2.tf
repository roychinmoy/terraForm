resource "aws_instance" "aws_web" {
  ami           = var.ami # us-west-2
  instance_type = var.instance_type
#  vpc_security_group_ids  = [aws_security_group.sg.id]
  associate_public_ip_address =true
  tags = {
     Name = "${local.name}-instance"
  }

provisioner "local-exec" {
command = "echo this is a local provisioner and the server ip is ${self.private_ip}"
}
}
locals {
 name = var.name
 }
