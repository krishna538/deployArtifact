provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAXENY7ZOYCLZBJ6EI"
  secret_key = "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"

}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test235-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
