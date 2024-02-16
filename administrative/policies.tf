resource "spacelift_policy" "trigger-consumers" {
    type = "TRIGGER"
    space = data.spacelift_current_space.this.id
    body = "../policies/trigger/trigger-consumers.rego"
}