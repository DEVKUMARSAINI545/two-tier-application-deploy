# Two-Tier Flask Application Deployment on AWS

🚀 **Project Overview**  
This project demonstrates a **Two-Tier Flask Application** deployed on **AWS EC2** with automated setup using **Docker**, **Docker Compose**, **Terraform**, and **Shell Scripts**. The application is fully containerized, infrastructure is automated, and it is accessible via a public IP.

---

## 🌟 Key Highlights
- **Automated Deployment:** EC2 instance provisioning, Docker installation, and app startup all automated.
- **Multi-Container Architecture:** Separate containers for **Flask frontend** and **MySQL backend**.
- **Infrastructure as Code:** Terraform used to manage AWS resources.
- **Tech Stack:** Flask, MySQL, Docker, Docker Compose, Terraform, AWS EC2, Linux Shell.

---

## 🏗️ Project Architecture
![Two-Tier Flask Architecture](two-tier-flask-app/ProjectDiagram.png)
*Frontend and backend running on a single EC2 instance using Docker containers.*

---

## 📸 Application Screenshot
![Flask App Screenshot](two-tier-flask-app/application.png)
![Flask App Screenshot](two-tier-flask-app/ec2.png)
*Live Flask app running on AWS EC2.*

---

## 💻 How It Works
1. **Terraform** provisions an AWS EC2 instance and security group.  
2. **Shell Script** installs Docker, Docker Compose, and make a network and volume for presist data and necessary dependencies.  
3. **Docker Compose** launches the Flask app and database containers (mysql).  
4. **Public IP** provided by Terraform is used to access the application.

---

## 🎯 Outcome
- Successfully deployed a fully automated, multi-container Flask application.  
- Demonstrates ability to combine **cloud infrastructure, DevOps practices, and application development**.  

---

## 📂 Tech Stack
| Frontend | Backend | DevOps / Cloud |
|----------|---------|----------------|
| Flask    | MySQL   | Docker, Docker Compose, Terraform, AWS EC2, Shell Scripts |

---
## 💻 How to Run the Application

Follow these steps to deploy the application:

1. **Clone the Repository**
```bash
git clone <your-github-repo-link>
cd <your-repo-folder>/terraform

Note -> make sure add your aws access ID and secret ID in provider so i provided you terraform.tfvars file where you paste your access Id and secret ID


terraform init
terraform validate
terraform plan
terraform apply -auto-approve

Note -> Make sure your ec2 status will be passed so wait untile your ec2 status passed then your application will visible

http://<EC2_PUBLIC_IP>:5000

Feel free to explore the repo for details or live demo.
