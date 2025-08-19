Flask Docker App on AWS EC2

Deploy a Flask web application on AWS EC2 using Docker and Terraform.

Features

Terraform provisions EC2 automatically

Shell script installs Docker and Docker Compose

Flask app runs in a Docker container

Terraform outputs full URL of the app (HTTP/HTTPS)

Prerequisites

AWS account with Access Key ID & Secret Access Key

Terraform >= 1.5.x installed

SSH key for EC2

Basic knowledge of Docker

Setup Instructions
1. Configure AWS Credentials
export AWS_ACCESS_KEY_ID=<your-access-key-id>
export AWS_SECRET_ACCESS_KEY=<your-secret-access-key>
export AWS_DEFAULT_REGION=<your-region>

2. Initialize Terraform
terraform init
# If adding/updating providers:
terraform init -upgrade

3. Deploy Infrastructure
terraform plan
terraform apply -auto-approve


EC2 instance will be created

Docker and Flask app installed automatically

4. Access the Application

Terraform outputs the full URLs:

flask_app_url = http://<public-ip>:5000
flask_app_https_url = https://<public-dns>


Note: The app may take a few seconds to start after EC2 is ready.

Project Structure
project-root/
├── terraform/
│   ├── main.tf
│   ├── output.tf
│   ├── variables.tf
├── app/
│   ├── Dockerfile
│   ├── docker-compose.yml
│   ├── app.py
├── scripts/
│   └── setup.sh
└── README.md

Cleanup
terraform destroy -auto-approve