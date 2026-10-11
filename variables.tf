variable "zero_trust_device_posture_rules" {
  description = <<EOT
Map of zero_trust_device_posture_rules, attributes below
Required:
    - account_id
    - type
Optional:
    - description
    - expiration
    - input
    - match
    - name
    - schedule
EOT

  type = map(object({
    account_id  = string
    type        = string
    description = optional(string)
    expiration  = optional(string)
    input = optional(object({
      active_threats     = optional(number)
      auth_state         = optional(list(string))
      certificate_id     = optional(string)
      check_disks        = optional(list(string))
      check_private_key  = optional(bool)
      cn                 = optional(string)
      compliance_status  = optional(string)
      connection_id      = optional(string)
      count_operator     = optional(string)
      domain             = optional(string)
      eid_last_seen      = optional(string)
      enabled            = optional(bool)
      exists             = optional(bool)
      extended_key_usage = optional(list(string))
      id                 = optional(string)
      infected           = optional(bool)
      is_active          = optional(bool)
      issue_count        = optional(string)
      last_seen          = optional(string)
      locations = optional(object({
        paths        = optional(list(string))
        trust_stores = optional(list(string))
      }))
      network_status            = optional(string)
      operating_system          = optional(string)
      operational_state         = optional(string)
      operator                  = optional(string)
      os                        = optional(string)
      os_distro_name            = optional(string)
      os_distro_revision        = optional(string)
      os_version_extra          = optional(string)
      overall                   = optional(string)
      path                      = optional(string)
      require_all               = optional(bool)
      risk_level                = optional(string)
      score                     = optional(number)
      score_operator            = optional(string)
      sensor_config             = optional(string)
      sha256                    = optional(string)
      state                     = optional(string)
      subject_alternative_names = optional(list(string))
      thumbprint                = optional(string)
      total_score               = optional(number)
      update_window_days        = optional(number)
      version                   = optional(string)
      version_operator          = optional(string)
    }))
    match = optional(list(object({
      platform = optional(string)
    })))
    name     = optional(string)
    schedule = optional(string)
  }))
}

