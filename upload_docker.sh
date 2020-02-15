#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=sunnyjoonyc/udacity5th

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
export DOCKER_ID_USER="sunnyjoonyc"
docker login
docker tag 1ceb80aad31c $DOCKER_ID_USER/udacity5th
docker push $DOCKER_ID_USER/udacity5th

# Step 3:
# Push image to a docker repository
docker push sunnyjoonyc/udacity5th
