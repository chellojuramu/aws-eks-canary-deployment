# AWS EKS Canary Deployment 🚀

[![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)](https://www.terraform.io/)
[![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)](https://kubernetes.io/)
[![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)](https://aws.amazon.com/)

## 📖 Project Overview
This project is a production-grade **Site Reliability Engineering (SRE)** laboratory. It orchestrates a highly available cloud infrastructure on AWS EKS to demonstrate a **Zero-Downtime Canary Deployment** strategy. 

By separating Infrastructure as Code (Terraform) from Application Workloads (Kubernetes), this repository simulates a real-world **Platform Engineering** workflow.

## 📐 Architecture


## 🛠️ Tech Stack
| Component | Technology | Role |
| :--- | :--- | :--- |
| **Provisioning** | Terraform | Infrastructure as Code (HCL) |
| **Cloud** | AWS | VPC, NAT Gateway, EKS Cluster |
| **Orchestration** | Kubernetes | Container lifecycle management |
| **Traffic Mgmt** | NGINX Ingress | Weighted routing (80/20 split) |
| **Observability** | Prometheus | Real-time metric scraping |
