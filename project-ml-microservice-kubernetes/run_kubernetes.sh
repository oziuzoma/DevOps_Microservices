#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=oziomauzoma/project4-mlapp

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mlapp\
    --generator=run-pod/v1\
    --image=$dockerpath:v1.0.0\
    --port=80 --labels app=mlapp

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward mlapp 8000:80
