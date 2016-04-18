# image built localy using a fork of a Dockerfile from 
# https://github.com/mhart/alpine-node
# TODO: alpine/node should be built from an image built with docker-base
FROM alpine/node

ADD server/server.js /app/server/server.js
ADD static /app/static

# 8080 = node.js server based on HapiJs running the API proxy/wrapper
EXPOSE 8080

# USER root

WORKDIR /app

# Default command when starting the container
# CMD ["node server/server.js"]
ENTRYPOINT ["node", "server/server.js"]
