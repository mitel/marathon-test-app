#!/bin/bash

rm -rf dist/cf;
mkdir dist/cf;
mkdir dist/cf/server;
cp runtime/cf/package.json dist/cf;
cp runtime/cf/manifest.yml dist/cf;
cp dist/server/server.js dist/cf/server;
cp -r dist/static dist/cf;