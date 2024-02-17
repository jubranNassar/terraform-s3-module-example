resource "spacelift_policy" "trigger-consumers" {
  name     = "trigger-consumers"
  type     = "TRIGGER"
  space_id = data.spacelift_current_space.this.id
  body     = file("../policies/trigger/trigger-consumers.rego")
}

resource "spacelift_policy_attachment" "this" {
    module_id = spacelift_module.s3-module.id
    policy_id = spacelift_policy.trigger-consumers.id
}