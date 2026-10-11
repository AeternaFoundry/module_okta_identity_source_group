output "identity_source_groups_id" {
  description = "Map of id values across all identity_source_groups, keyed the same as var.identity_source_groups except keys with no id are omitted"
  value       = { for k, v in okta_identity_source_group.identity_source_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_source_groups_external_id" {
  description = "Map of external_id values across all identity_source_groups, keyed the same as var.identity_source_groups except keys with no external_id are omitted"
  value       = { for k, v in okta_identity_source_group.identity_source_groups : k => v.external_id if v.external_id != null && length(v.external_id) > 0 }
}
output "identity_source_groups_identity_source_id" {
  description = "Map of identity_source_id values across all identity_source_groups, keyed the same as var.identity_source_groups except keys with no identity_source_id are omitted"
  value       = { for k, v in okta_identity_source_group.identity_source_groups : k => v.identity_source_id if v.identity_source_id != null && length(v.identity_source_id) > 0 }
}
output "identity_source_groups_profile" {
  description = "Map of profile values across all identity_source_groups, keyed the same as var.identity_source_groups except keys with no profile are omitted"
  value       = { for k, v in okta_identity_source_group.identity_source_groups : k => v.profile if v.profile != null && length(v.profile) > 0 }
}

