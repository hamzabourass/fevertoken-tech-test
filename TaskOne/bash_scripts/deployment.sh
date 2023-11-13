#!/bin/bash

#ex : PWD_MANAGER="ip172-18-0-24-cl91pk4snmng0092gq8g@direct.labs.play-with-docker.com"
PWD_MANAGER="<PWD Manager ip>"
# path where you have the ssh key ex: SSK_KEY_FILE home/<user_name>/.ssh/id_ed25519
SSH_KEY_FILE="<--ssh_key-->"
SSH_USERNAME="<user_name>"
#Docker compose file in TaskOne folder
DOCKER_COMPOSE_FILE="docker-compose.yml"

#Copying the docker-compose.yml file into the PWD Node Manager
scp  -i "$SSH_KEY_FILE" "$DOCKER_COMPOSE_FILE" "$SSH_USERNAME@$PWD_MANAGER:/tmp/docker-compose.yml" > scp_log.txt 2>&1
scp_status=$?
echo "Exit status: $exit_status"
cat scp_log.txt

# Check the exit status and log the result
if [ "$scp_status" -eq 1 ]; then
    echo "Docker compose file copied successfully to the manager node"
else
    echo "Error copying file. Check scp_log.txt for details."
    exit 1
fi


#Connection to the Node Manager via SSH and start deployment
ssh -i "$SSH_KEY_FILE" "$SSH_USERNAME@$PWD_MANAGER" "docker stack deploy -c /tmp/docker-compose.yml fever-app"> ssh_log.txt 2>&1

ssh_status=$?
echo "Exit status: $ssh_status"

# Check the exit status and log the result
if [ "$ssh_status" -eq 0 ]; then
    echo "Connected successfully to the manager node"
else
    echo "Error In Connection. Check ssh_log.txt for details."
    exit 1
fi


echo "Application is deployed"
