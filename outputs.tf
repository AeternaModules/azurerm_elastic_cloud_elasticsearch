output "elastic_cloud_elasticsearches" {
  description = "All elastic_cloud_elasticsearch resources"
  value       = azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches
}
output "elastic_cloud_elasticsearches_elastic_cloud_deployment_id" {
  description = "List of elastic_cloud_deployment_id values across all elastic_cloud_elasticsearches"
  value       = [for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : v.elastic_cloud_deployment_id]
}
output "elastic_cloud_elasticsearches_elastic_cloud_email_address" {
  description = "List of elastic_cloud_email_address values across all elastic_cloud_elasticsearches"
  value       = [for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : v.elastic_cloud_email_address]
}
output "elastic_cloud_elasticsearches_elastic_cloud_sso_default_url" {
  description = "List of elastic_cloud_sso_default_url values across all elastic_cloud_elasticsearches"
  value       = [for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : v.elastic_cloud_sso_default_url]
}
output "elastic_cloud_elasticsearches_elastic_cloud_user_id" {
  description = "List of elastic_cloud_user_id values across all elastic_cloud_elasticsearches"
  value       = [for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : v.elastic_cloud_user_id]
}
output "elastic_cloud_elasticsearches_elasticsearch_service_url" {
  description = "List of elasticsearch_service_url values across all elastic_cloud_elasticsearches"
  value       = [for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : v.elasticsearch_service_url]
}
output "elastic_cloud_elasticsearches_kibana_service_url" {
  description = "List of kibana_service_url values across all elastic_cloud_elasticsearches"
  value       = [for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : v.kibana_service_url]
}
output "elastic_cloud_elasticsearches_kibana_sso_uri" {
  description = "List of kibana_sso_uri values across all elastic_cloud_elasticsearches"
  value       = [for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : v.kibana_sso_uri]
}
output "elastic_cloud_elasticsearches_location" {
  description = "List of location values across all elastic_cloud_elasticsearches"
  value       = [for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : v.location]
}
output "elastic_cloud_elasticsearches_logs" {
  description = "List of logs values across all elastic_cloud_elasticsearches"
  value       = [for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : v.logs]
}
output "elastic_cloud_elasticsearches_monitoring_enabled" {
  description = "List of monitoring_enabled values across all elastic_cloud_elasticsearches"
  value       = [for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : v.monitoring_enabled]
}
output "elastic_cloud_elasticsearches_name" {
  description = "List of name values across all elastic_cloud_elasticsearches"
  value       = [for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : v.name]
}
output "elastic_cloud_elasticsearches_resource_group_name" {
  description = "List of resource_group_name values across all elastic_cloud_elasticsearches"
  value       = [for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : v.resource_group_name]
}
output "elastic_cloud_elasticsearches_sku_name" {
  description = "List of sku_name values across all elastic_cloud_elasticsearches"
  value       = [for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : v.sku_name]
}
output "elastic_cloud_elasticsearches_tags" {
  description = "List of tags values across all elastic_cloud_elasticsearches"
  value       = [for k, v in azurerm_elastic_cloud_elasticsearch.elastic_cloud_elasticsearches : v.tags]
}

