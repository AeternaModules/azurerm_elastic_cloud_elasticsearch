variable "elastic_cloud_elasticsearches" {
  description = <<EOT
Map of elastic_cloud_elasticsearches, attributes below
Required:
    - elastic_cloud_email_address
    - location
    - name
    - resource_group_name
    - sku_name
Optional:
    - monitoring_enabled
    - tags
    - logs (block):
        - filtering_tag (optional, block):
            - action (required)
            - name (required)
            - value (required)
        - send_activity_logs (optional)
        - send_azuread_logs (optional)
        - send_subscription_logs (optional)
EOT

  type = map(object({
    elastic_cloud_email_address = string
    location                    = string
    name                        = string
    resource_group_name         = string
    sku_name                    = string
    monitoring_enabled          = optional(bool) # Default: true
    tags                        = optional(map(string))
    logs = optional(object({
      filtering_tag = optional(list(object({
        action = string
        name   = string
        value  = string
      })))
      send_activity_logs     = optional(bool) # Default: false
      send_azuread_logs      = optional(bool) # Default: false
      send_subscription_logs = optional(bool) # Default: false
    }))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_elastic_cloud_elasticsearch's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.ElasticsearchName] !ok
  # path: name
  #   source:    [from validate.ElasticsearchName] !regexp.MustCompile(`^[a-zA-Z0-9_-]{2,32}$`).MatchString(v)
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: elastic_cloud_email_address
  #   source:    validation.IsEmailAddress(...) - no translation rule yet, add one
  # path: logs.filtering_tag.name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: logs.filtering_tag.value
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: logs.filtering_tag.action
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

