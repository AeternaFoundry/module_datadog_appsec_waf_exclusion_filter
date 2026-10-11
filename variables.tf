variable "appsec_waf_exclusion_filters" {
  description = <<EOT
Map of appsec_waf_exclusion_filters, attributes below
Required:
    - description
    - enabled
Optional:
    - event_query
    - ip_list
    - on_match
    - parameters
    - path_glob
    - rules_target (block):
        - rule_id (optional)
        - tags (optional, block):
            - category (optional)
            - type (optional)
    - scope (block):
        - env (optional)
        - service (optional)
EOT

  type = map(object({
    description = string
    enabled     = bool
    event_query = optional(string)
    ip_list     = optional(list(string))
    on_match    = optional(string)
    parameters  = optional(list(string))
    path_glob   = optional(string)
    rules_target = optional(list(object({
      rule_id = optional(string)
      tags = optional(list(object({
        category = optional(string)
        type     = optional(string)
      })))
    })))
    scope = optional(list(object({
      env     = optional(string)
      service = optional(string)
    })))
  }))
}

