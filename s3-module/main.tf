resource "aws_s3_bucket" "example-bucket" {
  bucket = var.bucket_name

  tags = {
    name: "test",
    env: "prod"
  }
}

