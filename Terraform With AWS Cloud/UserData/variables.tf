variable "AWS_ACCESS_KEY" {
    type = string
    default = "AKIAY5S26G734E24TOGT"
}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
default = "us-west-2"
}



variable "PATH_TO_PRIVATE_KEY" {
  default = "levelup_key"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "levelup_key.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}