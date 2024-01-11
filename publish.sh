#!/bin/bash

# Check if jq is installed
if ! command -v jq &> /dev/null
then
    echo "jq could not be found. Please install jq to continue."
    exit 1
fi

# Extract version from package.json using jq
VERSION=$(jq -r '.version' package.json)

# Docker details
DOCKER_USERNAME="hellocoop"  
DOCKER_IMAGE_NAME="mockin"  
DOCKER_TAG="$DOCKER_USERNAME/$DOCKER_IMAGE_NAME"

# Building Docker image
echo "Building Docker image with tag: $VERSION"
docker build -t "$DOCKER_TAG:latest" -t "$DOCKER_TAG:$VERSION" .

# Pushing the image to Docker Hub

# Pushing the image to Docker Hub
echo "Pushing latest tag to Docker Hub"
docker push "$DOCKER_TAG:latest"

echo "Pushing version $VERSION tag to Docker Hub"
docker push "$DOCKER_TAG:$VERSION"

echo "Deployment complete"
