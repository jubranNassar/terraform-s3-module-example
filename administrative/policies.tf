resource "spacelift_policy" "trigger-consumers" {
    name = "trigger-consumers"
    type = "TRIGGER"
    space_id = data.spacelift_current_space.this.id
    body = "../policies/trigger/trigger-consumers.rego"
}