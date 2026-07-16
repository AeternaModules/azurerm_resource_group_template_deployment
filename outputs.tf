output "resource_group_template_deployments_id" {
  description = "Map of id values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "resource_group_template_deployments_debug_level" {
  description = "Map of debug_level values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.debug_level if v.debug_level != null && length(v.debug_level) > 0 }
}
output "resource_group_template_deployments_deployment_mode" {
  description = "Map of deployment_mode values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.deployment_mode if v.deployment_mode != null && length(v.deployment_mode) > 0 }
}
output "resource_group_template_deployments_name" {
  description = "Map of name values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "resource_group_template_deployments_output_content" {
  description = "Map of output_content values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.output_content if v.output_content != null && length(v.output_content) > 0 }
}
output "resource_group_template_deployments_parameters_content" {
  description = "Map of parameters_content values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.parameters_content if v.parameters_content != null && length(v.parameters_content) > 0 }
}
output "resource_group_template_deployments_resource_group_name" {
  description = "Map of resource_group_name values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "resource_group_template_deployments_tags" {
  description = "Map of tags values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "resource_group_template_deployments_template_content" {
  description = "Map of template_content values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.template_content if v.template_content != null && length(v.template_content) > 0 }
}
output "resource_group_template_deployments_template_spec_version_id" {
  description = "Map of template_spec_version_id values across all resource_group_template_deployments, keyed the same as var.resource_group_template_deployments"
  value       = { for k, v in azurerm_resource_group_template_deployment.resource_group_template_deployments : k => v.template_spec_version_id if v.template_spec_version_id != null && length(v.template_spec_version_id) > 0 }
}

