variable "AWS_ACCESS_KEY" {
    type = string
    default = "AKIAY5S26G73QNYPZWEW"
}

variable "AWS_SECRET_KEY" {
  type=string
  default = ""
}

variable "AWS_REGION" {
default = "us-west-2"
}

variable "Security_Group"{
    type = list
    default = ["sg-24076", "sg-90890", "sg-456789"]
}

variable "AMIS" {
    type = map
    default = {
        us-east-1 = "ami-0f40c8f97004632f9"
        us-east-2 = "ami-05692172625678b4e"
        us-west-2 = "ami-0352d5a37fb4f603f"
        us-west-1 = "ami-0f40c8f97004632f9"
    }
}

