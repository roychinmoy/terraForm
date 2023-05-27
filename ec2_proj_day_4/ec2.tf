resource "aws_instance" "aws_web" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = "pro"
  associate_public_ip_address =true
  tags = {
   Name = "provisioner-instance"

}

connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = file("E:/Terraform/ec2_proj_4/rsa-key-day4")
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y ",
      "sudo apt install nginx -y",
    ]
  }
}
resource "aws_key_pair" "deployer" {
  key_name   = "pro"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC/pMuIr2852z4QG0hKrNQ75qNRyKPGEXXDL2WvVTdtFQ4GyxsR181vGJd9KqTVBwwx5Ax8hH7M/35TtQTRO+yDf0qbaVlsqIeXks5KnM4NDcs7+HIv/ayxEtEC6aIwOE0W/kR8H/XnAjgA4ML+tUP+51EgxVfXvan0FGRq07+uQfk2dp5+cvuq33GLlihyFOtMXofu99cn0FvxF836yEsM7ELmepOJRvRQQG42qpeuWeiJp1+Hl2Dh/pnqHLpPecEf6mclxWl5If2DONuJbd5ZvDtlmxeB/hQ/xzatRgPc4j4gnTlrQrjvMUHBSb9gA/nKJq4jBOKrTvSa98O2eHas+30qlEnOggGxttx7QS/SwkkajeTw//WKMJXF5/07nBuCbSxdZHnVDK6y18zY8bkwqzh6YmOUvbrj2/++qadtKeX1pDCbZ3IY3dXXI1nwyaxoh+JFS5kgMru9ZxGJkoMH6lU+hgRJUQAgXtHES/Zf/a5UgGXZOtcmujVYlsi34S0= chinmoy@DESKTOP-P64863S"
}
