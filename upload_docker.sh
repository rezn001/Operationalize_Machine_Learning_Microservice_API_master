#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=rezn001/microservices
export dockerpath="rezn001/microservices"

# Step 2:  
# Authenticate & tag
docker login --username rezn001
docker tag microservices $dockerpath
echo "Docker ID and Image: $dockerpath" 

# Step 3:
# Push image to a docker repository
docker push $dockerpath
