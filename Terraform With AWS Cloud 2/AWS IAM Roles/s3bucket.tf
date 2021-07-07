resource "aws_s3_bucket" "bucket-created-tf" {
  bucket = "bucket-created-tf"
  acl    = "private"

  tags = {
    Name        = "bucket-created-tf"
    Environment = "Dev"
  }
}