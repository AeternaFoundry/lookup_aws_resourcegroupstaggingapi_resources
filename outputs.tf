output "resourcegroupstaggingapi_resources_lookup_id" {
  description = "Map of id values across all resourcegroupstaggingapi_resources_lookup, keyed the same as var.resourcegroupstaggingapi_resources_lookup"
  value       = { for k, v in data.aws_resourcegroupstaggingapi_resources.resourcegroupstaggingapi_resources_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "resourcegroupstaggingapi_resources_lookup_exclude_compliant_resources" {
  description = "Map of exclude_compliant_resources values across all resourcegroupstaggingapi_resources_lookup, keyed the same as var.resourcegroupstaggingapi_resources_lookup"
  value       = { for k, v in data.aws_resourcegroupstaggingapi_resources.resourcegroupstaggingapi_resources_lookup : k => v.exclude_compliant_resources if v.exclude_compliant_resources != null }
}
output "resourcegroupstaggingapi_resources_lookup_include_compliance_details" {
  description = "Map of include_compliance_details values across all resourcegroupstaggingapi_resources_lookup, keyed the same as var.resourcegroupstaggingapi_resources_lookup"
  value       = { for k, v in data.aws_resourcegroupstaggingapi_resources.resourcegroupstaggingapi_resources_lookup : k => v.include_compliance_details if v.include_compliance_details != null }
}
output "resourcegroupstaggingapi_resources_lookup_region" {
  description = "Map of region values across all resourcegroupstaggingapi_resources_lookup, keyed the same as var.resourcegroupstaggingapi_resources_lookup"
  value       = { for k, v in data.aws_resourcegroupstaggingapi_resources.resourcegroupstaggingapi_resources_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "resourcegroupstaggingapi_resources_lookup_resource_arn_list" {
  description = "Map of resource_arn_list values across all resourcegroupstaggingapi_resources_lookup, keyed the same as var.resourcegroupstaggingapi_resources_lookup"
  value       = { for k, v in data.aws_resourcegroupstaggingapi_resources.resourcegroupstaggingapi_resources_lookup : k => v.resource_arn_list if v.resource_arn_list != null && length(v.resource_arn_list) > 0 }
}
output "resourcegroupstaggingapi_resources_lookup_resource_tag_mapping_list" {
  description = "Map of resource_tag_mapping_list values across all resourcegroupstaggingapi_resources_lookup, keyed the same as var.resourcegroupstaggingapi_resources_lookup"
  value       = { for k, v in data.aws_resourcegroupstaggingapi_resources.resourcegroupstaggingapi_resources_lookup : k => v.resource_tag_mapping_list if v.resource_tag_mapping_list != null && length(v.resource_tag_mapping_list) > 0 }
}
output "resourcegroupstaggingapi_resources_lookup_resource_type_filters" {
  description = "Map of resource_type_filters values across all resourcegroupstaggingapi_resources_lookup, keyed the same as var.resourcegroupstaggingapi_resources_lookup"
  value       = { for k, v in data.aws_resourcegroupstaggingapi_resources.resourcegroupstaggingapi_resources_lookup : k => v.resource_type_filters if v.resource_type_filters != null && length(v.resource_type_filters) > 0 }
}
output "resourcegroupstaggingapi_resources_lookup_tag_filter" {
  description = "Map of tag_filter values across all resourcegroupstaggingapi_resources_lookup, keyed the same as var.resourcegroupstaggingapi_resources_lookup"
  value       = { for k, v in data.aws_resourcegroupstaggingapi_resources.resourcegroupstaggingapi_resources_lookup : k => v.tag_filter if v.tag_filter != null && length(v.tag_filter) > 0 }
}

