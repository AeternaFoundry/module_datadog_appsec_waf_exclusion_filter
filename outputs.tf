output "appsec_waf_exclusion_filters_id" {
  description = "Map of id values across all appsec_waf_exclusion_filters, keyed the same as var.appsec_waf_exclusion_filters except keys with no id are omitted"
  value       = { for k, v in datadog_appsec_waf_exclusion_filter.appsec_waf_exclusion_filters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appsec_waf_exclusion_filters_description" {
  description = "Map of description values across all appsec_waf_exclusion_filters, keyed the same as var.appsec_waf_exclusion_filters except keys with no description are omitted"
  value       = { for k, v in datadog_appsec_waf_exclusion_filter.appsec_waf_exclusion_filters : k => v.description if v.description != null && length(v.description) > 0 }
}
output "appsec_waf_exclusion_filters_enabled" {
  description = "Map of enabled values across all appsec_waf_exclusion_filters, keyed the same as var.appsec_waf_exclusion_filters except keys with no enabled are omitted"
  value       = { for k, v in datadog_appsec_waf_exclusion_filter.appsec_waf_exclusion_filters : k => v.enabled if v.enabled != null }
}
output "appsec_waf_exclusion_filters_event_query" {
  description = "Map of event_query values across all appsec_waf_exclusion_filters, keyed the same as var.appsec_waf_exclusion_filters except keys with no event_query are omitted"
  value       = { for k, v in datadog_appsec_waf_exclusion_filter.appsec_waf_exclusion_filters : k => v.event_query if v.event_query != null && length(v.event_query) > 0 }
}
output "appsec_waf_exclusion_filters_ip_list" {
  description = "Map of ip_list values across all appsec_waf_exclusion_filters, keyed the same as var.appsec_waf_exclusion_filters except keys with no ip_list are omitted"
  value       = { for k, v in datadog_appsec_waf_exclusion_filter.appsec_waf_exclusion_filters : k => v.ip_list if v.ip_list != null && length(v.ip_list) > 0 }
}
output "appsec_waf_exclusion_filters_on_match" {
  description = "Map of on_match values across all appsec_waf_exclusion_filters, keyed the same as var.appsec_waf_exclusion_filters except keys with no on_match are omitted"
  value       = { for k, v in datadog_appsec_waf_exclusion_filter.appsec_waf_exclusion_filters : k => v.on_match if v.on_match != null && length(v.on_match) > 0 }
}
output "appsec_waf_exclusion_filters_parameters" {
  description = "Map of parameters values across all appsec_waf_exclusion_filters, keyed the same as var.appsec_waf_exclusion_filters except keys with no parameters are omitted"
  value       = { for k, v in datadog_appsec_waf_exclusion_filter.appsec_waf_exclusion_filters : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "appsec_waf_exclusion_filters_path_glob" {
  description = "Map of path_glob values across all appsec_waf_exclusion_filters, keyed the same as var.appsec_waf_exclusion_filters except keys with no path_glob are omitted"
  value       = { for k, v in datadog_appsec_waf_exclusion_filter.appsec_waf_exclusion_filters : k => v.path_glob if v.path_glob != null && length(v.path_glob) > 0 }
}
output "appsec_waf_exclusion_filters_rules_target" {
  description = "Map of rules_target values across all appsec_waf_exclusion_filters, keyed the same as var.appsec_waf_exclusion_filters except keys with no rules_target are omitted"
  value       = { for k, v in datadog_appsec_waf_exclusion_filter.appsec_waf_exclusion_filters : k => v.rules_target if v.rules_target != null && length(v.rules_target) > 0 }
}
output "appsec_waf_exclusion_filters_scope" {
  description = "Map of scope values across all appsec_waf_exclusion_filters, keyed the same as var.appsec_waf_exclusion_filters except keys with no scope are omitted"
  value       = { for k, v in datadog_appsec_waf_exclusion_filter.appsec_waf_exclusion_filters : k => v.scope if v.scope != null && length(v.scope) > 0 }
}

