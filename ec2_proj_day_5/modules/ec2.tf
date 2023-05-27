module "ec2" {

source = "git::https://github.com/CloudSihmar/terraform-aws-ec2-instance1.git"

region = "us-west-2"
ami ="ami-0fcf52bcf5db7b003"
instance_type ="t2.micro"
}
