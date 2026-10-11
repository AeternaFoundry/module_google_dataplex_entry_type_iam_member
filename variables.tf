variable "dataplex_entry_type_iam_members" {
  description = <<EOT
Map of dataplex_entry_type_iam_members, attributes below
Required:
    - entry_type_id
    - member
    - role
Optional:
    - location
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    entry_type_id = string
    member        = string
    role          = string
    location      = optional(string)
    project       = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

