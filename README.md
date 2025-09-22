**EKS Cluster with Managed Node Groups, ALB Ingress, and Service Deployment
Overview**
This project provisions an Amazon EKS (Elastic Kubernetes Service) cluster using Terraform with managed node groups. After cluster creation, two microservices—user and order—are deployed and exposed to the internet using the AWS ALB Ingress Controller.

**Architecture**
EKS Cluster: Provisioned using Terraform modules.
Managed Node Groups: For scalable and managed worker nodes.
ALB Ingress Controller: Handles external traffic and routes it to Kubernetes services.
Services Deployed: user and order microservices, exposed via ALB.
**Prerequisites**
Terraform
kubectl
AWS CLI
AWS account with sufficient permissions
