#!/bin/bash

# executed by npm run docker-deploy - see package.json

rm -rf dist/docker;
mkdir dist/docker;
docker stop devopsday; 
docker rm devopsday; 
docker build -t mitel/devopsday dist/docker/; 
docker run -d --name=\"devopsday\" -p 8080:8080 mitel/devopsday; 
docker logs -f devopsday;