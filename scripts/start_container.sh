#!/bin/bash

#pull docker image from ecr
docker pull public.ecr.aws/q8e1y7y5/flask-code-build:latest
echo "Docker Image pulled succesfully"

#run the doocker container
docker run -d --name flask_app -p 5000:8070 public.ecr.aws/q8e1y7y5/flask-code-build:latest
echo "Application deployed sucessfully"
