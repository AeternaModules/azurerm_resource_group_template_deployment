variable "resource_group_template_deployments" {
  description = <<EOT
Map of resource_group_template_deployments, attributes below
Required:
    - deployment_mode
    - name
    - resource_group_name
Optional:
    - debug_level
    - parameters_content
    - tags
    - template_content
    - template_spec_version_id
EOT

  type = map(object({
    deployment_mode          = string
    name                     = string
    resource_group_name      = string
    debug_level              = optional(string)
    parameters_content       = optional(string)
    tags                     = optional(map(string))
    template_content         = optional(string)
    template_spec_version_id = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.resource_group_template_deployments : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.resource_group_template_deployments : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.resource_group_template_deployments : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.resource_group_template_deployments : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

