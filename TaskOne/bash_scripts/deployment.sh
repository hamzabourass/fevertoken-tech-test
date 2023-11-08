#!/bin/bash

PWD_MANAGER="ip172-18-0-19-cl5s540gftqg00boi520@direct.labs.play-with-docker.com"
SSH_KEY_FILE="/home/hamzabrse/.ssh/id_ed25519"
SSH_USERNAME="hamzabrse"
DOCKER_COMPOSE_FILE="docker-compose.yml"

# Copy the docker-compose.yml file to the manager node
scp -i "$SSH_KEY_FILE" "$DOCKER_COMPOSE_FILE" "$SSH_USERNAME@$PWD_MANAGER:/tmp"

# Connect to the manager node and deploy the Docker stack
ssh -i "$SSH_KEY_FILE" "$SSH_USERNAME@$PWD_MANAGER" "docker stack deploy -c docker-compose.yml fever-app"

echo "Application is deployed"