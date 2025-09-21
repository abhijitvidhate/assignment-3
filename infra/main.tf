terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "networking" {
  source = "./modules/networking"
  vpc_cidr_block = var.vpc_cidr_block
}

module "compute" {
  source = "./modules/compute"
  instance_type = var.instance_type
  ami_id        = var.ami_id
  subnet_id     = module.networking.subnet_id
  security_group_id = module.networking.security_group_id
}

module "database" {
  source = "./modules/database"
  db_instance_class = var.db_instance_class
  db_name           = var.db_name
  db_username       = var.db_username
  db_password       = var.db_password
  vpc_security_group_ids = [module.networking.security_group_id]
  subnet_ids             = [module.networking.subnet_id]
}

output "dashboard_public_ip" {
  value = module.compute.public_ip
}

output "db_endpoint" {
  value = module.database.db_endpoint
}
