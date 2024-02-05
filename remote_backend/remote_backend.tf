terraform {
  backend "s3" {
    bucket = aws_s3_bucket.buck-1.id
    key    = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform-locking"
    encrypt = true
  }
}