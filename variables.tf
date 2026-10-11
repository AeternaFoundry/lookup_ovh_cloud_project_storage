variable "cloud_project_storage_lookup" {
  description = <<EOT
Map of cloud_project_storage_lookup, attributes below
Required:
    - name
    - region_name
    - service_name
Optional:
    - hide_objects
    - limit
    - marker
    - prefix
EOT

  type = map(object({
    name         = string
    region_name  = string
    service_name = string
    hide_objects = optional(bool)
    limit        = optional(number)
    marker       = optional(string)
    prefix       = optional(string)
  }))
}

