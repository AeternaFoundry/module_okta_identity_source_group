resource "okta_identity_source_group" "identity_source_groups" {
  for_each = var.identity_source_groups

  external_id        = each.value.external_id
  identity_source_id = each.value.identity_source_id

  dynamic "profile" {
    for_each = each.value.profile != null ? each.value.profile : []
    content {
      description  = profile.value.description
      display_name = profile.value.display_name
    }
  }
}

