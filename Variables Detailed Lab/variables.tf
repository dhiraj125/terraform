variable "AWS_Region" {
  default = "us-west-2"
}

variable "AWS_Access_Key" {}

variable "AWS_Secret_Key" {}

variable "Security_Group" {
  type=list
  default = ["sg-10123","sg-10876"]
}

variable "AMIs" {
  type = map
  default = {
      us-west-2 = "ami-03ac21435677d3cb3"
      us-west-1 = "	ami-008464c6813f3241e"
  }
}