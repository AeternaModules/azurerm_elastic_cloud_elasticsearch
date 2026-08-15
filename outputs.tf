output "elastic_cloud_elasticsearches_id" {
  description = "Map of id values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elastic_cloud_elasticsearches_elastic_cloud_deployment_id" {
  description = "Map of elastic_cloud_deployment_id values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.elastic_cloud_deployment_id if v.elastic_cloud_deployment_id != null && length(v.elastic_cloud_deployment_id) > 0 }
}
output "elastic_cloud_elasticsearches_elastic_cloud_email_address" {
  description = "Map of elastic_cloud_email_address values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.elastic_cloud_email_address if v.elastic_cloud_email_address != null && length(v.elastic_cloud_email_address) > 0 }
}
output "elastic_cloud_elasticsearches_elastic_cloud_sso_default_url" {
  description = "Map of elastic_cloud_sso_default_url values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.elastic_cloud_sso_default_url if v.elastic_cloud_sso_default_url != null && length(v.elastic_cloud_sso_default_url) > 0 }
}
output "elastic_cloud_elasticsearches_elastic_cloud_user_id" {
  description = "Map of elastic_cloud_user_id values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.elastic_cloud_user_id if v.elastic_cloud_user_id != null && length(v.elastic_cloud_user_id) > 0 }
}
output "elastic_cloud_elasticsearches_elasticsearch_service_url" {
  description = "Map of elasticsearch_service_url values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.elasticsearch_service_url if v.elasticsearch_service_url != null && length(v.elasticsearch_service_url) > 0 }
}
output "elastic_cloud_elasticsearches_kibana_service_url" {
  description = "Map of kibana_service_url values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.kibana_service_url if v.kibana_service_url != null && length(v.kibana_service_url) > 0 }
}
output "elastic_cloud_elasticsearches_kibana_sso_uri" {
  description = "Map of kibana_sso_uri values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.kibana_sso_uri if v.kibana_sso_uri != null && length(v.kibana_sso_uri) > 0 }
}
output "elastic_cloud_elasticsearches_location" {
  description = "Map of location values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.location if v.location != null && length(v.location) > 0 }
}
output "elastic_cloud_elasticsearches_logs" {
  description = "Map of logs values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => one(v.logs) if v.logs != null && length(v.logs) > 0 }
}
output "elastic_cloud_elasticsearches_monitoring_enabled" {
  description = "Map of monitoring_enabled values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.monitoring_enabled if v.monitoring_enabled != null }
}
output "elastic_cloud_elasticsearches_name" {
  description = "Map of name values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.name if v.name != null && length(v.name) > 0 }
}
output "elastic_cloud_elasticsearches_resource_group_name" {
  description = "Map of resource_group_name values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "elastic_cloud_elasticsearches_sku_name" {
  description = "Map of sku_name values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "elastic_cloud_elasticsearches_tags" {
  description = "Map of tags values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

