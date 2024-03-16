resource "aws_instance" "test" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_route53_record" "web" {
  zone_id = "Z06848581UD2LTM8TKQW6"
  name    = "test.devops155.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.test.private_ip]
}