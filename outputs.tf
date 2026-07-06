output "resource_group_template_deployments" {
  description = "All resource_group_template_deployment resources"
  value       = azurerm_resource_group_template_deployment.resource_group_template_deployments
}
output "resource_group_template_deployments_debug_level" {
  description = "List of debug_level values across all resource_group_template_deployments"
  value       = [for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : v.debug_level]
}
output "resource_group_template_deployments_deployment_mode" {
  description = "List of deployment_mode values across all resource_group_template_deployments"
  value       = [for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : v.deployment_mode]
}
output "resource_group_template_deployments_name" {
  description = "List of name values across all resource_group_template_deployments"
  value       = [for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : v.name]
}
output "resource_group_template_deployments_output_content" {
  description = "List of output_content values across all resource_group_template_deployments"
  value       = [for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : v.output_content]
}
output "resource_group_template_deployments_parameters_content" {
  description = "List of parameters_content values across all resource_group_template_deployments"
  value       = [for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : v.parameters_content]
}
output "resource_group_template_deployments_resource_group_name" {
  description = "List of resource_group_name values across all resource_group_template_deployments"
  value       = [for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : v.resource_group_name]
}
output "resource_group_template_deployments_tags" {
  description = "List of tags values across all resource_group_template_deployments"
  value       = [for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : v.tags]
}
output "resource_group_template_deployments_template_content" {
  description = "List of template_content values across all resource_group_template_deployments"
  value       = [for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : v.template_content]
}
output "resource_group_template_deployments_template_spec_version_id" {
  description = "List of template_spec_version_id values across all resource_group_template_deployments"
  value       = [for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : v.template_spec_version_id]
}

