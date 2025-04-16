provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-002f6e91abff6eb96"
instance_type = "t2.medium"
key_name = "barsf435"
vpc_security_group_ids = ["sg-015602df323b67248"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
