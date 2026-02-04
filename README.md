# Cloud-Cost-Optimizer
Cloud environments often suffer from unnecessary costs due to continuously running idle resources.
Manual monitoring and cost control are inefficient and error-prone. The Smart Cloud Cost Optimizer is an
automated cloud-based solution that monitors resource utilization and optimizes cloud costs by intelligently
managing underutilized compute resources. Using real-time monitoring and serverless automation, the
system performs automated start and stop operations while maintaining operational efficiency and cost
effectiveness.. The purpose of this project is to develop an autonomous, serverless system that aligns
resource availability with actual demand, ensuring a true "pay-only-for-what-you-use" model.

## 🚀 Key Highlights

- ⚡ Fully Serverless Architecture  
- 📉 Automated EC2 Cost Optimization  
- 📊 Custom Cloud Monitoring Dashboard  
- 🔐 IAM-secured & Non-Intrusive  
- 🏷️ Tag-based Governance (`AutoManage: true`)  
- 🧾 Audit Logs with DynamoDB  

---

## 🧠 Problem Statement

Cloud environments often suffer from **idle yet running resources**, leading to **unnecessary operational expenditure (OpEx)**.

Manual monitoring is:
- Time-consuming  
- Error-prone  
- Not scalable  

There is a strong need for an **automated, intelligent, and secure system** that dynamically aligns resource usage with actual demand.

---

## 🎯 Project Objective

- Automatically detect **idle EC2 instances**
- Stop instances when utilization is low
- Restart instances when demand increases
- Provide a **centralized monitoring dashboard**
- Reduce cloud cost **without impacting critical workloads**

---

## 👥 Target Beneficiaries

- **Cloud Administrators** – Reduce manual operational overhead  
- **FinOps Teams** – Achieve measurable cloud cost savings  
- **Startups & SMEs** – Optimize limited cloud budgets  

---

## 🏗️ System Architecture Overview
<p align="center">Optimizing the cost of serverless wev application</p>
<p align="center">
  <img src="https://github.com/Himanshu5619/Cloud-Cost-Optimizer/blob/main/Architecture/Optimizing%20the%20cost%20of%20serverless%20wev%20application.png" alt="Streamlit App Screenshot">
</p>

<p align="center">Monitoring an App ex from the AWS Startup Kit</p>
<p align="center">
  <img src="https://github.com/Himanshu5619/Cloud-Cost-Optimizer/blob/main/Architecture/Monitoring%20an%20App%20ex%20from%20the%20AWS%20Startup%20Kit.png" alt="Streamlit App Screenshot">
</p>

<p align="center">Hibernating EC2 Instances in Response to a CloudWatch Alarm</p>
<p align="center">
  <img src="https://github.com/Himanshu5619/Cloud-Cost-Optimizer/blob/main/Architecture/Hibernating%20EC2%20Instances%20in%20Response%20to%20a%20CloudWatch%20Alarm.png" alt="Streamlit App Screenshot">
</p>

**Core AWS Services Used:**
- AWS EventBridge
- AWS Lambda (Node.js 18.x)
- AWS CloudWatch
- AWS EC2
- Amazon DynamoDB
- Amazon S3
- Amazon API Gateway

**Flow:**
<p align="center">
  <img src="https://github.com/Himanshu5619/Cloud-Cost-Optimizer/blob/main/Architecture/Backend%20Frontend%20AWS.png" alt="Streamlit App Screenshot">
</p>
1. EventBridge triggers Lambda every 5 minutes  
2. Lambda fetches CPU metrics from CloudWatch  
3. Decision logic evaluates thresholds  
4. EC2 instances are started or stopped  
5. Actions are logged in DynamoDB  
6. Dashboard fetches data via API Gateway  

---

## ⚙️ Optimization Algorithm (Threshold-Based)

### 🔄 Workflow

**Monitoring Phase**
- EventBridge triggers Lambda every **5 minutes**

**Analysis Phase**
- Average CPU utilization of last **15 minutes**

**Decision Phase**
- CPU < **10%** → Stop running instance  
- CPU > **60%** → Start stopped instance  

**Governance**
- Only instances tagged:
  ```text
  AutoManage: true

  ## 🛠️ Tech Stack

| Layer | Technology |
|-----|-----------|
| Cloud Provider | AWS |
| Compute | EC2 |
| Serverless | AWS Lambda |
| Scheduling | EventBridge |
| Monitoring | CloudWatch |
| Database | DynamoDB |
| API | API Gateway |
| Frontend | HTML, CSS, JavaScript |
| Visualization | Chart.js |
| Runtime | Node.js 18.x |

---

## 🧩 Prerequisites

Before deploying the project, ensure you have:

- AWS Account (Free Tier preferred)
- IAM user with programmatic access
- AWS CLI installed & configured
- Node.js 18.x
- Basic knowledge of AWS EC2 & IAM
- Git & GitHub

---

## 🚀 Deployment Guide (Step-by-Step)

### 1️⃣ Create EC2 Instances
- Launch EC2 instances
- Add tag:
  ```text
  Key: AutoManage
  Value: true
