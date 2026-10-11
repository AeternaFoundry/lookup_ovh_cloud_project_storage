data "ovh_cloud_project_storage" "cloud_project_storage_lookup" {
  for_each = var.cloud_project_storage_lookup

  name         = each.value.name
  region_name  = each.value.region_name
  service_name = each.value.service_name
  hide_objects = each.value.hide_objects
  limit        = each.value.limit
  marker       = each.value.marker
  prefix       = each.value.prefix
}

