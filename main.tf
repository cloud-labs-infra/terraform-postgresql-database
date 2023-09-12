resource "postgresql_database" "main" {
  name              = var.name
  encoding          = var.encoding
  lc_collate        = var.lc_collate
  lc_ctype          = var.lc_ctype
  connection_limit  = var.connection_limit
  allow_connections = var.allow_connections
  owner             = var.make_owner ? postgresql_role.role.name : null
}

resource "random_password" "password" {
  length      = var.password.length
  special     = var.password.special
  min_numeric = var.password.min_numeric
}

resource "postgresql_role" "role" {
  name     = var.role == null ? var.name : var.role
  login    = true
  password = random_password.password.result
}

resource "postgresql_grant" "database" {
  database    = postgresql_database.main.name
  role        = postgresql_role.role.name
  object_type = "database"
  privileges  = var.privileges
}
