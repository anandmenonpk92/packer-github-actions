variable "project" {
  type = string
  default = "shoping"
}

variable "env" {
  type = string
  default = "production"
}

locals {
  image-timestamp = "${formatdate("DD-MM-YYYY-hh-mm", timestamp())}"
  image-name = "${var.project}-${var.env}-${local.image-timestamp}"
}

variable "ami" {
  default = "ami-079db87dc4c10ac91"
}
