module "example" {
  source = "./local-module"
  input  = var.input
}

variable "input" {
  default = "Hello universe"
}