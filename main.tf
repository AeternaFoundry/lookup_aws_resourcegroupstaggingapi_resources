data "aws_resourcegroupstaggingapi_resources" "resourcegroupstaggingapi_resources_lookup" {
  for_each = var.resourcegroupstaggingapi_resources_lookup

  exclude_compliant_resources = each.value.exclude_compliant_resources
  include_compliance_details  = each.value.include_compliance_details
  region                      = each.value.region
  resource_arn_list           = each.value.resource_arn_list
  resource_type_filters       = each.value.resource_type_filters

  dynamic "tag_filter" {
    for_each = each.value.tag_filter != null ? each.value.tag_filter : []
    content {
      key    = tag_filter.value.key
      values = tag_filter.value.values
    }
  }
}

