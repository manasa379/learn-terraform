resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo hello world - ${var.env} Environment"
  }
}

variable "env" {}

terraform {
  backend "s3" {}
}