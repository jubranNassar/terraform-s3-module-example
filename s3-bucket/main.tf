module "terraform-aws-s3" {
  source  = "spacelift.io/my-first-env/terraform-aws-s3/default"
  version = ">= 0.1.3"

  bucket_name = "this-is-jubrans-test-bucket-23223"
}