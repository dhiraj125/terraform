variable "AWS_Region" {
  default = "us-west-2"
}

variable "AWS_Access_Key" {}

variable "AWS_Secret_Key" {}

variable "Security_Group" {
  type=list
  default = ["sg-10123","sg-10876"]
}