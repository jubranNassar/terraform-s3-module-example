resource "aws_s3_bucket" "example-bucket" {
  bucket = var.bucket_name

  tags = {
    name : "test3232"
  }
}

output "bucket-name" {
  value = aws_s3_bucket.example-bucket.id
}

