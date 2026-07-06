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
  # --- Unconfirmed validation candidates, derived from azurerm_resource_group_template_deployment's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.TemplateDeploymentName] !matched
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
  # path: deployment_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: template_spec_version_id
  #   source:    [from validate.TemplateSpecVersionID] !ok
  # path: template_spec_version_id
  #   source:    [from validate.TemplateSpecVersionID] err != nil
  # path: debug_level
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

