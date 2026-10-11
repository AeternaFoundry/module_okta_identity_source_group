variable "identity_source_groups" {
  description = <<EOT
Map of identity_source_groups, attributes below
Required:
    - external_id
    - identity_source_id
Optional:
    - profile (block):
        - description (optional)
        - display_name (optional)
EOT

  type = map(object({
    external_id        = string
    identity_source_id = string
    profile = optional(list(object({
      description  = optional(string)
      display_name = optional(string)
    })))
  }))
}

