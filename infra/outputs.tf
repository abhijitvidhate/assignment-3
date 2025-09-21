output "dashboard_public_ip" {
  description = "Public IP of the EC2 instance running the dashboard"
  value       = module.compute.public_ip
}

output "db_endpoint" {
  description = "Database endpoint"
  value       = module.database.db_endpoint
}
