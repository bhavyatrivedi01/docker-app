#!/usr/bin/bash 

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 998503830099.dkr.ecr.us-east-1.amazonaws.com
docker pull 998503830099.dkr.ecr.us-east-1.amazonaws.com/production:v4
docker run -d -p 8000:8000 998503830099.dkr.ecr.us-east-1.amazonaws.com/production:v4
