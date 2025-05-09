# Podman Static Site Deployment using GitHub Actions

This repository demonstrates a CI/CD pipeline using **GitHub Actions** to:
- Build a Docker image for a static site
- Push the image to Amazon ECR
- Deploy the image to an **EC2 instance** using **Podman** via SSH

---

## ✅ Requirements

### 🧱 Infrastructure Prerequisites
- An EC2 instance with:
  - **Podman** installed and configured
  - Access to pull from Amazon ECR
  - SSH enabled
- An Amazon ECR repository created

---

## 🔐 GitHub Secrets Configuration

The following secrets must be added to your GitHub repository:

| Secret Name               | Description                                   |
|---------------------------|-----------------------------------------------|
| `AWS_ACCESS_KEY_ID`       | Your AWS access key with ECR and EC2 access   |
| `AWS_SECRET_ACCESS_KEY`   | Your AWS secret key                           |
| `EC2_HOST`                | Public IP or DNS of your EC2 instance         |
| `EC2_USER`                | SSH user (e.g., `ec2-user`)                   |
| `EC2_SSH_PRIVATE_KEY`     | Private key for EC2 instance (PEM format)     |
| `ECR_REPOSITORY`          | Full ECR image URI                            |

---

## ⚙️ Workflow Overview

The GitHub Actions workflow performs the following:

1. **Checkout Code**
2. **Configure AWS Credentials**
3. **Login to Amazon ECR**
4. **Build and Push Docker Image**
5. **Deploy to EC2 via Podman**
6. **Clean up**

---

## 🚀 Deployment Instructions

1. Fork or clone this repo
2. Update the `workflow.yaml` file with your actual ECR URI and image tag
3. Push code to the `main` branch to trigger the workflow

---

## 📁 Folder Structure

