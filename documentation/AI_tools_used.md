# AI Tools Used for Assignment 3: DevOps IaC & Cloud Deployment

This project leveraged AI-native tools to accelerate Infrastructure-as-Code (IaC) development and cloud deployment for the CI/CD Pipeline Health Dashboard.

## Tools Utilized
- **GitHub Copilot**: Assisted in generating Terraform module code, variable definitions, and deployment scripts.
- **ChatGPT**: Provided step-by-step guidance, troubleshooting, and explanations for Terraform errors and best practices.
- **Cursor**: Enabled rapid code navigation, refactoring, and context-aware suggestions during IaC development.

## Workflow
1. **Terraform Module Generation**
   - Used Copilot and ChatGPT to scaffold modules for networking (VPC, Subnet, Security Group), compute (EC2), and database (RDS/Postgres).
   - AI tools suggested correct resource attributes and variable usage.
2. **Debugging & Error Resolution**
   - ChatGPT identified and fixed issues such as incorrect resource attributes (e.g., replacing `name` with `db_name` for PostgreSQL).
   - Copilot provided inline code fixes and syntax suggestions.
3. **Documentation & Guidance**
   - ChatGPT generated deployment guides and documentation templates.
   - Cursor helped organize and refactor documentation files.

## Example Prompts
- "Generate a Terraform module for AWS EC2 with Docker installation."
- "Why is 'name' not valid for aws_db_instance with Postgres?"
- "Create a sample terraform.tfvars for all required variables."

## Benefits
- Accelerated IaC development and error resolution.
- Improved code quality and documentation.
- Enabled rapid iteration and deployment to AWS cloud.

---
For detailed prompt logs, see `prompts.md`. For deployment steps, see `Deployment_Guide.md`.