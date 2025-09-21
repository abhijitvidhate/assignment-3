resource "aws_db_instance" "dashboard_db" {
  allocated_storage    = 20
  engine              = "postgres"
  engine_version      = "14.4"
  instance_class      = var.db_instance_class
  db_name             = var.db_name
  username            = var.db_username
  password            = var.db_password
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name   = aws_db_subnet_group.dashboard_db_subnet_group.name
  skip_final_snapshot    = true
}

resource "aws_db_subnet_group" "dashboard_db_subnet_group" {
  name       = "dashboard-db-subnet-group"
  subnet_ids = var.subnet_ids
}
