provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAY5S26G73RPDPCANY"
  secret_key = "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"
}

provider "aws" {
  region     = "${var.AWS_Region}"
  access_key = "${var.AWS_Access_Key}"
  secret_key = "${var.AWS_Secret_Key}"
}