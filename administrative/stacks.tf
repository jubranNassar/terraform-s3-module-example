resource "spacelift_stack" "s3-stack" {
  name         = "s3-stack"
  repository   = "terraform-s3-module-example"
  branch       = "main"
  project_root = "s3-bucket"
  space_id     = data.spacelift_current_space.this.id

  github_enterprise {
    namespace = "jubranNassar"
  }
}