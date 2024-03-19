data "aws_ami" "AMI" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["212103609741"]
}

data "aws_security_group" "sg" {
name = "allow-all"
}