## Deploying Application on Amazon EKS with Terraform & Jenkins
📌 Project Overview
This project demonstrates end-to-end DevOps workflow:
 - Provisioning Amazon EKS cluster using Terraform.
 - Deploying a containerized application to the cluster using Jenkins CI/CD Pipeline.
 - Storing images in DockerHub.

## Prerequisites
 - AWS Account with programmatic access (IAM user with required permissions).
 - Terraform installed (>= v1.0).
 - Jenkins Server installed (VM/EC2/Container).
 - kubectl and awscli installed on Jenkins server.
 - DockerHub account.

## Step 1: Provision Infrastructure with Terraform
 
   - Clone the repo and go to terraform/ directory.

   - Initialize Terraform: terraform init

   - Preview resources: terraform plan

   - Apply changes to create EKS cluster: terraform apply 

Once created, configure kubectl:
- aws eks update-kubeconfig --name my-eks-cluster --region us-east-1
- kubectl get nodes
✅ Now your EKS cluster + node group is ready.


## 🔑Step 2: Configure Jenkins Credentials

1. AWS Credentials
   - Install AWS Credentials Plugin in Jenkins.
   - Add IAM user credentials (Access Key ID, Secret Access Key).
   - Save with ID: AWS_CRED

2. DockerHub Credentials
   - Add username & password in Jenkins Credentials.
   - Save with ID: dockerhub-creds.

## step 3: Jenkins Pipeline

## step 4: Troubleshooting
 - Terraform errors
 → Check if IAM permissions allow creating EKS, VPC, EC2, IAM roles.

 - AWS Credentials not found in Jenkins
 → Install AWS Credentials Plugin and configure aws-eks-creds.

 - EC2 nodes keep re-creating
 → This happens with EKS Managed Node Groups (auto-healing).

 - DockerHub push failed (unauthorized)
 → Add dockerhub-creds in Jenkins.

 - Cluster authentication issues
 → Run aws eks update-kubeconfig with correct AWS profile.

## step 5:
## Verification
Check cluster status:

 - kubectl get nodes
 - kubectl get pod
 - kubectl get svc
## step 6:
Application Access
After a successful deployment, the application is exposed via an AWS Load Balancer (ELB) created by the Kubernetes Service.
1. Retrieve the service details:
- kubectl get svc k8s-cicd-app-service

2. Access the application using the value from the EXTERNAL-IP column
