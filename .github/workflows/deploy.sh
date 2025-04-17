#!/bin/bash

# Stop and remove existing container if running
docker stop hello-python-app || true
docker rm hello-python-app || true

# Pull the latest image from DockerHub
docker pull $DOCKER_USERNAME/hello-python-devops:latest

# Run the container
docker run -d \
  --name hello-python-app \
  -p 3000:3000 \
  $DOCKER_USERNAME/hello-python-devops:latest
