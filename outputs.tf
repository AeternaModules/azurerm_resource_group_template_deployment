output "resource_group_template_deployments_id" {
  description = "Map of id values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.id }
}
output "resource_group_template_deployments_debug_level" {
  description = "Map of debug_level values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.debug_level }
}
output "resource_group_template_deployments_deployment_mode" {
  description = "Map of deployment_mode values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.deployment_mode }
}
output "resource_group_template_deployments_name" {
  description = "Map of name values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.name }
}
output "resource_group_template_deployments_output_content" {
  description = "Map of output_content values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.output_content }
}
output "resource_group_template_deployments_parameters_content" {
  description = "Map of parameters_content values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.parameters_content }
}
output "resource_group_template_deployments_resource_group_name" {
  description = "Map of resource_group_name values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.resource_group_name }
}
output "resource_group_template_deployments_tags" {
  description = "Map of tags values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.tags }
}
output "resource_group_template_deployments_template_content" {
  description = "Map of template_content values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.template_content }
}
output "resource_group_template_deployments_template_spec_version_id" {
  description = "Map of template_spec_version_id values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.template_spec_version_id }
}

