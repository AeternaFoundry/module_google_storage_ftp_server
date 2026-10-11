output "storage_ftp_servers_id" {
  description = "Map of id values across all storage_ftp_servers, keyed the same as var.storage_ftp_servers except keys with no id are omitted"
  value       = { for k, v in google_storage_ftp_server.storage_ftp_servers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_ftp_servers_access_type" {
  description = "Map of access_type values across all storage_ftp_servers, keyed the same as var.storage_ftp_servers except keys with no access_type are omitted"
  value       = { for k, v in google_storage_ftp_server.storage_ftp_servers : k => v.access_type if v.access_type != null && length(v.access_type) > 0 }
}
output "storage_ftp_servers_deletion_policy" {
  description = "Map of deletion_policy values across all storage_ftp_servers, keyed the same as var.storage_ftp_servers except keys with no deletion_policy are omitted"
  value       = { for k, v in google_storage_ftp_server.storage_ftp_servers : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "storage_ftp_servers_display_name" {
  description = "Map of display_name values across all storage_ftp_servers, keyed the same as var.storage_ftp_servers except keys with no display_name are omitted"
  value       = { for k, v in google_storage_ftp_server.storage_ftp_servers : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "storage_ftp_servers_effective_labels" {
  description = "Map of effective_labels values across all storage_ftp_servers, keyed the same as var.storage_ftp_servers except keys with no effective_labels are omitted"
  value       = { for k, v in google_storage_ftp_server.storage_ftp_servers : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "storage_ftp_servers_external_config" {
  description = "Map of external_config values across all storage_ftp_servers, keyed the same as var.storage_ftp_servers except keys with no external_config are omitted"
  value       = { for k, v in google_storage_ftp_server.storage_ftp_servers : k => one(v.external_config) if v.external_config != null && length(v.external_config) > 0 }
}
output "storage_ftp_servers_internal_config" {
  description = "Map of internal_config values across all storage_ftp_servers, keyed the same as var.storage_ftp_servers except keys with no internal_config are omitted"
  value       = { for k, v in google_storage_ftp_server.storage_ftp_servers : k => one(v.internal_config) if v.internal_config != null && length(v.internal_config) > 0 }
}
output "storage_ftp_servers_labels" {
  description = "Map of labels values across all storage_ftp_servers, keyed the same as var.storage_ftp_servers except keys with no labels are omitted"
  value       = { for k, v in google_storage_ftp_server.storage_ftp_servers : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "storage_ftp_servers_location" {
  description = "Map of location values across all storage_ftp_servers, keyed the same as var.storage_ftp_servers except keys with no location are omitted"
  value       = { for k, v in google_storage_ftp_server.storage_ftp_servers : k => v.location if v.location != null && length(v.location) > 0 }
}
output "storage_ftp_servers_project" {
  description = "Map of project values across all storage_ftp_servers, keyed the same as var.storage_ftp_servers except keys with no project are omitted"
  value       = { for k, v in google_storage_ftp_server.storage_ftp_servers : k => v.project if v.project != null && length(v.project) > 0 }
}
output "storage_ftp_servers_server_id" {
  description = "Map of server_id values across all storage_ftp_servers, keyed the same as var.storage_ftp_servers except keys with no server_id are omitted"
  value       = { for k, v in google_storage_ftp_server.storage_ftp_servers : k => v.server_id if v.server_id != null && length(v.server_id) > 0 }
}
output "storage_ftp_servers_service_agent" {
  description = "Map of service_agent values across all storage_ftp_servers, keyed the same as var.storage_ftp_servers except keys with no service_agent are omitted"
  value       = { for k, v in google_storage_ftp_server.storage_ftp_servers : k => v.service_agent if v.service_agent != null && length(v.service_agent) > 0 }
}
output "storage_ftp_servers_state" {
  description = "Map of state values across all storage_ftp_servers, keyed the same as var.storage_ftp_servers except keys with no state are omitted"
  value       = { for k, v in google_storage_ftp_server.storage_ftp_servers : k => v.state if v.state != null && length(v.state) > 0 }
}
output "storage_ftp_servers_terraform_labels" {
  description = "Map of terraform_labels values across all storage_ftp_servers, keyed the same as var.storage_ftp_servers except keys with no terraform_labels are omitted"
  value       = { for k, v in google_storage_ftp_server.storage_ftp_servers : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

