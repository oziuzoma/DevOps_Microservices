#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=oziomauzoma/project3-app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag ozi oziomauzoma/project3-app:v1.0.0
docker login
# Step 3:
# Push image to a docker repository
docker push oziomauzoma/project3-app:v1.0.0