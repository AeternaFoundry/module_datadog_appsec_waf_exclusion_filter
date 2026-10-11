resource "datadog_appsec_waf_exclusion_filter" "appsec_waf_exclusion_filters" {
  for_each = var.appsec_waf_exclusion_filters

  description = each.value.description
  enabled     = each.value.enabled
  event_query = each.value.event_query
  ip_list     = each.value.ip_list
  on_match    = each.value.on_match
  parameters  = each.value.parameters
  path_glob   = each.value.path_glob

  dynamic "rules_target" {
    for_each = each.value.rules_target != null ? each.value.rules_target : []
    content {
      rule_id = rules_target.value.rule_id
      dynamic "tags" {
        for_each = rules_target.value.tags != null ? rules_target.value.tags : []
        content {
          category = tags.value.category
          type     = tags.value.type
        }
      }
    }
  }

  dynamic "scope" {
    for_each = each.value.scope != null ? each.value.scope : []
    content {
      env     = scope.value.env
      service = scope.value.service
    }
  }
}

