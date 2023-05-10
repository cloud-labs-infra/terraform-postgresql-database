resource "postgresql_database" "main" {
  name              = var.name
  encoding          = var.encoding
  lc_collate        = var.lc_collate
  lc_ctype          = var.lc_ctype
  connection_limit  = var.connection_limit
  allow_connections = var.allow_connections
  owner             = postgresql_role.owner.name
}

resource "random_password" "password" {
  length  = var.password.length
  special = var.password.special
}

resource "postgresql_role" "owner" {
  name               = var.role == null ? var.name : var.role
  login              = true
  password           = md5(random_password.password.result)
  encrypted_password = true
}
