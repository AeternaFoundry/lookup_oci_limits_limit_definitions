variable "limits_limit_definitions_lookup" {
  description = <<EOT
Map of limits_limit_definitions_lookup, attributes below
Required:
    - compartment_id
Optional:
    - name
    - service_name
    - subscription_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id  = string
    name            = optional(string)
    service_name    = optional(string)
    subscription_id = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

