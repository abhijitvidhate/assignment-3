# Assignment 3: CI/CD Pipeline Health Dashboard – Infrastructure-as-Code (IaC)

This folder contains Terraform scripts and modules to provision cloud infrastructure and deploy the CI/CD Pipeline Health Dashboard on AWS.

## Structure
- `main.tf` – Root Terraform configuration, orchestrates modules
- `variables.tf` – Input variables for the deployment
- `outputs.tf` – Key outputs (dashboard IP, DB endpoint)
- `terraform.tfvars` – Example variable values
- `modules/` – Contains modular Terraform code for:
  - `networking` (VPC, Subnet, Security Group)
  - `compute` (EC2 instance with Docker)
  - `database` (RDS/Postgres)

## Quick Start
1. Edit `terraform.tfvars` with your AWS region, AMI ID, DB credentials, etc.
2. Run `terraform init` to initialize the project
3. Run `terraform plan` to preview changes
4. Run `terraform apply` to provision infrastructure
5. Access your dashboard via the public IP output

## Documentation
- See `../documentation/Deployment_Guide.md` for full deployment steps
- See `../documentation/AI_Tools_Used.md` for details on AI-native workflow

## Notes
- All code and docs were generated using AI tools (ChatGPT, Copilot, Cursor)
- For troubleshooting, see the deployment guide and prompt logs

---
For questions or improvements, please open an issue or contact the project maintainer.