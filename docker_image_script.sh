#!/bin/bash

echo "pulling docker image"
read -p "Enter tag/version: " tag
read -p "Enter github username: " username
read -p "Enter repository name: " repository
docker pull $username:$repository:$tag

docker run it $username:$tag