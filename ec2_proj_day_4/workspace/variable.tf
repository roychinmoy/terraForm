variable "region" {
type = string
default = "us-west-2"
}

variable "ami" {
type = string
default = "ami-04adeb9ef364bcb6a"
}

variable "instance_type" {
type = string
default = "t2.micro"
}

variable "port" {
type = list
default = ["80", "443" , "22" , "3306" , "81", "82"]
}
variable "name" {
type = string
default = "default"
}
