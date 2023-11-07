#!/bin/bash 
container_name=name
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com
docker pull .dkr.ecr.us-east-1.amazonaws.com/webapp:latest
docker image tag awsaccountid.dkr.ecr.us-east-1.amazonaws.com/image:latest $container_name:latest
docker run -d -p 80:80 --name $container_name $container_name:latest

