data "oci_limits_limit_definitions" "limits_limit_definitions_lookup" {
  for_each = var.limits_limit_definitions_lookup

  compartment_id  = each.value.compartment_id
  name            = each.value.name
  service_name    = each.value.service_name
  subscription_id = each.value.subscription_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

