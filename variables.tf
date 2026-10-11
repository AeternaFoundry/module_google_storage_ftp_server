variable "storage_ftp_servers" {
  description = <<EOT
Map of storage_ftp_servers, attributes below
Required:
    - access_type
    - location
    - server_id
Optional:
    - deletion_policy
    - display_name
    - labels
    - project
    - external_config (block):
        - allowed_cidr_blocks (optional)
    - internal_config (block):
        - consumer_accept_list (optional, block):
            - connection_limit (required)
            - project (required)
        - consumer_reject_list (optional, block):
            - project (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    access_type     = string
    location        = string
    server_id       = string
    deletion_policy = optional(string)
    display_name    = optional(string)
    labels          = optional(map(string))
    project         = optional(string)
    external_config = optional(object({
      allowed_cidr_blocks = optional(set(string))
    }))
    internal_config = optional(object({
      consumer_accept_list = optional(list(object({
        connection_limit = number
        project          = string
      })))
      consumer_reject_list = optional(list(object({
        project = string
      })))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

