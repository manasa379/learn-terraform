terraform {
  backend "s3" {
    bucket = "terraform-d155"
    key = "06-state/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "null_resource" "null" {
  provisioner "local-exec" {
    command = "echo Hello"
  }
}