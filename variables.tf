variable "resourcegroupstaggingapi_resources_lookup" {
  description = <<EOT
Map of resourcegroupstaggingapi_resources_lookup, attributes below
Optional:
    - exclude_compliant_resources
    - include_compliance_details
    - region
    - resource_arn_list
    - resource_type_filters
    - tag_filter (block):
        - key (required)
        - values (optional)
EOT

  type = map(object({
    exclude_compliant_resources = optional(bool)
    include_compliance_details  = optional(bool)
    region                      = optional(string)
    resource_arn_list           = optional(set(string))
    resource_type_filters       = optional(set(string))
    tag_filter = optional(list(object({
      key    = string
      values = optional(set(string))
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.resourcegroupstaggingapi_resources_lookup : (
        v.tag_filter == null || (length(v.tag_filter) <= 50)
      )
    ])
    error_message = "Each tag_filter list must contain at most 50 items"
  }
}

