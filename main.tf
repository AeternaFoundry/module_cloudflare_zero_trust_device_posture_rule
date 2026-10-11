resource "cloudflare_zero_trust_device_posture_rule" "zero_trust_device_posture_rules" {
  for_each = var.zero_trust_device_posture_rules

  account_id  = each.value.account_id
  type        = each.value.type
  description = each.value.description
  expiration  = each.value.expiration
  input       = each.value.input
  match       = each.value.match
  name        = each.value.name
  schedule    = each.value.schedule
}

