resource "random_string" "this" {
  length  = 6
  special = false
  upper   = false
}

variable "bucket_name" {
  type    = string
  default = random_string.this.result
}