#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=oziomauzoma/project4-mlapp

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag ozi $dockerpath:v1.0.0
docker login
# Step 3:
# Push image to a docker repository
docker push $dockerpath:v1.0.0