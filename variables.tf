variable "name" {
  description = "The name of the database"
  type        = string
  nullable    = false
  validation {
    condition     = 1 <= length(var.name) && length(var.name) <= 64
    error_message = "The database name contains 1 to 64 characters."
  }
}

variable "encoding" {
  description = "Character set encoding to use in the database"
  type        = string
  default     = "UTF8"
}

variable "connection_limit" {
  description = "How many concurrent connections can be established to this database"
  type        = number
  default     = -1
}

variable "allow_connections" {
  description = "If `false` then no one can connect to this database"
  type        = bool
  default     = true
}

variable "lc_collate" {
  description = "Collation order `LC_COLLATE` to use in the database"
  type        = string
  default     = "C"
}

variable "lc_ctype" {
  description = "Character classification `LC_CTYPE` to use in the database"
  type        = string
  default     = "C"
}

variable "owner" {
  description = "The name of the database owner role, default - name of database"
  type        = string
  default     = null
}

variable "password" {
  description = "Owner role's password parameters"
  type = object({
    length  = optional(number, 20)
    special = optional(bool, false)
  })
  default = {}
}
