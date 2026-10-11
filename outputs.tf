output "limits_limit_definitions_lookup_id" {
  description = "Map of id values across all limits_limit_definitions_lookup, keyed the same as var.limits_limit_definitions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_limits_limit_definitions.limits_limit_definitions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "limits_limit_definitions_lookup_compartment_id" {
  description = "Map of compartment_id values across all limits_limit_definitions_lookup, keyed the same as var.limits_limit_definitions_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_limits_limit_definitions.limits_limit_definitions_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "limits_limit_definitions_lookup_filter" {
  description = "Map of filter values across all limits_limit_definitions_lookup, keyed the same as var.limits_limit_definitions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_limits_limit_definitions.limits_limit_definitions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "limits_limit_definitions_lookup_limit_definitions" {
  description = "Map of limit_definitions values across all limits_limit_definitions_lookup, keyed the same as var.limits_limit_definitions_lookup except keys with no limit_definitions are omitted"
  value       = { for k, v in data.oci_limits_limit_definitions.limits_limit_definitions_lookup : k => v.limit_definitions if v.limit_definitions != null && length(v.limit_definitions) > 0 }
}
output "limits_limit_definitions_lookup_name" {
  description = "Map of name values across all limits_limit_definitions_lookup, keyed the same as var.limits_limit_definitions_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_limits_limit_definitions.limits_limit_definitions_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "limits_limit_definitions_lookup_service_name" {
  description = "Map of service_name values across all limits_limit_definitions_lookup, keyed the same as var.limits_limit_definitions_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.oci_limits_limit_definitions.limits_limit_definitions_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "limits_limit_definitions_lookup_subscription_id" {
  description = "Map of subscription_id values across all limits_limit_definitions_lookup, keyed the same as var.limits_limit_definitions_lookup except keys with no subscription_id are omitted"
  value       = { for k, v in data.oci_limits_limit_definitions.limits_limit_definitions_lookup : k => v.subscription_id if v.subscription_id != null && length(v.subscription_id) > 0 }
}

