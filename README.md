# Step 1
Open the app in vs :
# Step 2
Create docker file:
# Step 3
Build and run the Docker image locally.
# Step 4
Run the docker
# Step 5
Run on local host 3000
# Step 6
Run container
# Step 7

Docker login 
# Step 8
Create repository
# Step 9
Push the image on doker hub 
# Step 10
Create repository

# Zesty Application  Minikube Deployment

## Part A – Minikube Setup & Verification
1. Install Minikube on Windows/Linux/Mac.
2. Start Minikube:
   
   minikube start
   ## Verify Cluster Status
   kubectl get nodes
   kubectl get pods -A
   ## Part B  Kubernetes Deployment Files
   Created a folder /k8s/ containing:

   deployment.yml – defines replicas and container image (samiyyaaftab/zesty:latest)

   service.yml – exposes the application inside/outside cluster
   ## Part C  Deploy to Minikube
   Configure Docker Environment

   minikube docker-env --shell powershell | Invoke-Expression

    Apply Kubernetes Configurations

   kubectl apply -f k8s/deployment.yml
   kubectl apply -f k8s/service.yml

    Verify pods
    kubectl get pods

    Access Application in Browser

    minikube service zesty-service

## how to run again
 minikube start
minikube docker-env --shell powershell | Invoke-Expression
minikube service zesty-service
