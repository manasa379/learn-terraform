resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo hello-world"
  }
}

resource "null_resource" "example2" {
  provisioner "local-exec" {
    command = <<EOF
echo hello-world
ls
cd

  }
}