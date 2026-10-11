resource "google_storage_ftp_server" "storage_ftp_servers" {
  for_each = var.storage_ftp_servers

  access_type     = each.value.access_type
  location        = each.value.location
  server_id       = each.value.server_id
  deletion_policy = each.value.deletion_policy
  display_name    = each.value.display_name
  labels          = each.value.labels
  project         = each.value.project

  dynamic "external_config" {
    for_each = each.value.external_config != null ? [each.value.external_config] : []
    content {
      allowed_cidr_blocks = external_config.value.allowed_cidr_blocks
    }
  }

  dynamic "internal_config" {
    for_each = each.value.internal_config != null ? [each.value.internal_config] : []
    content {
      dynamic "consumer_accept_list" {
        for_each = internal_config.value.consumer_accept_list != null ? internal_config.value.consumer_accept_list : []
        content {
          connection_limit = consumer_accept_list.value.connection_limit
          project          = consumer_accept_list.value.project
        }
      }
      dynamic "consumer_reject_list" {
        for_each = internal_config.value.consumer_reject_list != null ? internal_config.value.consumer_reject_list : []
        content {
          project = consumer_reject_list.value.project
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

