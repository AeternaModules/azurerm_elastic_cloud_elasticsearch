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
    monitoring_enabled          = optional(bool)
    tags                        = optional(map(string))
    logs = optional(object({
      filtering_tag = optional(list(object({
        action = string
        name   = string
        value  = string
      })))
      send_activity_logs     = optional(bool)
      send_azuread_logs      = optional(bool)
      send_subscription_logs = optional(bool)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.elastic_cloud_elasticsearches : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.elastic_cloud_elasticsearches : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.elastic_cloud_elasticsearches : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.elastic_cloud_elasticsearches : (
        v.logs == null || (v.logs.filtering_tag == null || alltrue([for item in v.logs.filtering_tag : (length(item.name) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.elastic_cloud_elasticsearches : (
        v.logs == null || (v.logs.filtering_tag == null || alltrue([for item in v.logs.filtering_tag : (length(item.value) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.elastic_cloud_elasticsearches : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

