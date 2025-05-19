#!/bin/bash

# Start minikube
minikube start

# Apply Deployment
kubectl apply -f deployment.yaml

# Apply Service
kubectl apply -f service.yaml

# Get pods
kubectl get pods

# Scale deployment to 3 replicas
kubectl scale deployment nginx-deployment --replicas=3

# Describe pod
kubectl describe pod $(kubectl get pods -o name | grep nginx | head -n 1)
