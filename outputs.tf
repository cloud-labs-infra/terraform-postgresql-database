output "name" {
  description = "Database name"
  value       = postgresql_database.main.name
}

output "role_name" {
  description = "Role name"
  sensitive   = true
  value       = postgresql_role.role.name
}

output "role_password" {
  description = "Role password"
  sensitive   = true
  value       = random_password.password.result
}
