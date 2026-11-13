output "identity_source_groups_id" {
  description = "Map of id values across all identity_source_groups, keyed the same as var.identity_source_groups"
  value       = { for k, v in okta_identity_source_group.identity_source_groups : k => v.id }
}
output "identity_source_groups_external_id" {
  description = "Map of external_id values across all identity_source_groups, keyed the same as var.identity_source_groups"
  value       = { for k, v in okta_identity_source_group.identity_source_groups : k => v.external_id }
}
output "identity_source_groups_identity_source_id" {
  description = "Map of identity_source_id values across all identity_source_groups, keyed the same as var.identity_source_groups"
  value       = { for k, v in okta_identity_source_group.identity_source_groups : k => v.identity_source_id }
}
output "identity_source_groups_profile" {
  description = "Map of profile values across all identity_source_groups, keyed the same as var.identity_source_groups"
  value       = { for k, v in okta_identity_source_group.identity_source_groups : k => v.profile }
}

