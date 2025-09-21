# Deployment Guide: CI/CD Pipeline Health Dashboard (Assignment 3)

This guide explains how to provision cloud infrastructure and deploy your dashboard using Terraform and AI-native tools.

## Prerequisites
- AWS account with programmatic access (Access Key & Secret)
- Terraform v1.5.0 or newer installed
- Docker image for your dashboard app (e.g., pushed to Docker Hub or ECR)
- Update `terraform.tfvars` with your values (region, AMI, DB credentials, etc.)

## Steps

### 1. Clone the Repository
```bash
git clone https://github.com/abhijitvidhate/assignment-3.git
cd fyber/assignment-3/infra
```

### 2. Initialize Terraform
```bash
terraform init
```

### 3. Review & Edit Variables
Edit `terraform.tfvars` to set your AWS region, instance type, AMI ID, DB credentials, etc.

### 4. Plan Infrastructure
```bash
terraform plan
```
Review the output to verify resources to be created.

### 5. Apply Infrastructure
```bash
terraform apply
```
Type `yes` to confirm and provision resources.

### 6. Access the Dashboard
- After apply, note the `dashboard_public_ip` output.
- Visit `http://<dashboard_public_ip>` in your browser.

### 7. Database Access
- The `db_endpoint` output provides the connection string for your managed database.

## Troubleshooting
- Use `terraform destroy` to remove resources if needed.
- Check AWS Console for resource status.
- Review logs in EC2 instance for Docker/container issues.

## AI-Native Workflow
- All Terraform scripts and documentation were generated and debugged using ChatGPT, Copilot, and Cursor.
- See `AI_Tools_Used.md` for details.
