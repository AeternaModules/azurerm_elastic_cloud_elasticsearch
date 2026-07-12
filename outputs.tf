output "elastic_cloud_elasticsearches_id" {
  description = "Map of id values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.id }
}
output "elastic_cloud_elasticsearches_elastic_cloud_deployment_id" {
  description = "Map of elastic_cloud_deployment_id values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.elastic_cloud_deployment_id }
}
output "elastic_cloud_elasticsearches_elastic_cloud_email_address" {
  description = "Map of elastic_cloud_email_address values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.elastic_cloud_email_address }
}
output "elastic_cloud_elasticsearches_elastic_cloud_sso_default_url" {
  description = "Map of elastic_cloud_sso_default_url values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.elastic_cloud_sso_default_url }
}
output "elastic_cloud_elasticsearches_elastic_cloud_user_id" {
  description = "Map of elastic_cloud_user_id values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.elastic_cloud_user_id }
}
output "elastic_cloud_elasticsearches_elasticsearch_service_url" {
  description = "Map of elasticsearch_service_url values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.elasticsearch_service_url }
}
output "elastic_cloud_elasticsearches_kibana_service_url" {
  description = "Map of kibana_service_url values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.kibana_service_url }
}
output "elastic_cloud_elasticsearches_kibana_sso_uri" {
  description = "Map of kibana_sso_uri values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.kibana_sso_uri }
}
output "elastic_cloud_elasticsearches_location" {
  description = "Map of location values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.location }
}
output "elastic_cloud_elasticsearches_logs" {
  description = "Map of logs values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.logs }
}
output "elastic_cloud_elasticsearches_monitoring_enabled" {
  description = "Map of monitoring_enabled values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.monitoring_enabled }
}
output "elastic_cloud_elasticsearches_name" {
  description = "Map of name values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.name }
}
output "elastic_cloud_elasticsearches_resource_group_name" {
  description = "Map of resource_group_name values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.resource_group_name }
}
output "elastic_cloud_elasticsearches_sku_name" {
  description = "Map of sku_name values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.sku_name }
}
output "elastic_cloud_elasticsearches_tags" {
  description = "Map of tags values across all elastic_cloud_elasticsearches, keyed the same as var.elastic_cloud_elasticsearches"
  value       = { for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : k => v.tags }
}

