#!/bin/bash

# prepare the resources needed to build the docker image
rm -rf dist/docker;
mkdir dist/docker;
mkdir dist/docker/server;
cp runtime/marathon/Dockerfile ./dist/docker;
cp dist/server/server.js dist/docker/server;
cp -r dist/static dist/docker;
