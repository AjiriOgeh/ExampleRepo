#!/bin/bash

echo "Pull image from  Docker Hub"
read -p "Enter github username: " github_username
read -p "Enter application name: " application_name 
read -p "Enter tag: " tag

docker pull $github_username/$application_name:$tag
echo "Image successfully pulled"

echo "Running Docker container..."
sudo docker run -it $github_username/$application_name:$tag