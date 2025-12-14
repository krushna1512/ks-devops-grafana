# 📊 Grafana Deployment – ECS & Local Docker Setup

## 👋 Overview
This repository contains the **infrastructure and deployment setup** required to run
**Grafana as a service on AWS ECS**, along with configuration to **test Grafana locally**
using Docker and Docker Compose.

The setup is designed to support:
- Infrastructure provisioning via **CloudFormation**
- Containerized deployment on **Amazon ECS**
- Local validation of Grafana configuration before cloud deployment

---

## 🎯 Objectives
- Deploy Grafana in a scalable and repeatable manner
- Use Infrastructure as Code for ECS resources
- Enable local testing of Grafana using Docker
- Maintain consistency between local and cloud environments

---

### 🔧 Tech Stack
- **Monitoring:** Grafana
- **IaC:** AWS CloudFormation
- **Containers:** Docker
- **Orchestration:** Amazon ECS
- **Local Testing:** Docker Compose

---

## 🧠 How It Works
Grafana is containerized using a custom Docker image. The image can be run locally using
Docker Compose for validation and testing. Once verified, the same image is deployed to
AWS ECS using CloudFormation templates that provision the required infrastructure and
services.

This approach ensures configuration consistency across local and production environments.

---
