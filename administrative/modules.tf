resource "spacelift_module" "s3-module" {
  name         = "terraform-aws-s3"
  branch       = "main"
  repository   = "terraform-s3-module"
  project_root = "s3-module"
  space_id     = data.spacelift_current_space.id

  github_enterprise {
    namespace = "jubranNassar"
  }
}