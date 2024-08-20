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

resource "spacelift_stack" "s3-stack-child" {
  name         = "s3-stack-child"
  repository   = "terraform-s3-module-example"
  branch       = "main"
  project_root = "s3-bucket"
  space_id     = "module-child-01J5RHCVWAGHJD80PZFGC32N5Y"

  github_enterprise {
    namespace = "jubranNassar"
  }
}