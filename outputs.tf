output "name" {
  description = "Database name"
  value       = postgresql_database.main.name
}

output "owner_name" {
  description = "Database owner name"
  sensitive   = true
  value       = postgresql_database.main.owner
}

output "owner_password" {
  description = "Database owner password"
  sensitive   = true
  value       = random_password.password.result
}
