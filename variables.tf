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
      filtering_tag = optional(object({
        action = string
        name   = string
        value  = string
      }))
      send_activity_logs     = optional(bool) # Default: false
      send_azuread_logs      = optional(bool) # Default: false
      send_subscription_logs = optional(bool) # Default: false
    }))
  }))
}

